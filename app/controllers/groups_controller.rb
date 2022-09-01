# frozen_string_literal: true

class GroupsController < ApplicationController
  before_action :set_group, only: %i[show edit update destroy join]
  before_action :ensure_frame_response, only: %i[new edit]

  # GET /groups or /groups.json
  def index
    @groups = case params[:search]
              when 'mine'
                current_user.my_groups
              when 'member'
                current_user.groups
              else
                Group.all
              end
  end

  # GET /groups/1 or /groups/1.json
  def show; end

  # GET /groups/new
  def new
    @group = Group.new
  end

  # GET /groups/1/edit
  def edit; end

  # POST /groups or /groups.json
  def create
    @group = current_user.my_groups.new(group_params)
    @group.users << current_user

    respond_to do |format|
      if @group.save
        format.turbo_stream { render turbo_stream: turbo_stream.prepend('groups', partial: 'groups/group', locals: { group: @group }) }
        format.html { redirect_to group_url(@group), notice: 'Group was successfully created.' }
        format.json { render :show, status: :created, location: @group }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /groups/1 or /groups/1.json
  def update
    respond_to do |format|
      if @group.update(group_params)
        format.turbo_stream { render turbo_stream: turbo_stream.replace(@group, partial: 'groups/group', locals: { group: @group }) }
        format.html { redirect_to group_url(@group), notice: 'Group was successfully updated.' }
        format.json { render :show, status: :ok, location: @group }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groups/1 or /groups/1.json
  def destroy
    @group.destroy

    respond_to do |format|
      format.html { redirect_to groups_url, notice: 'Group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def join
    @group.users << current_user
    respond_to do |format|
      format.html { redirect_to groups_url, notice: "#{current_user.email} joins the #{@group.title}" }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_group
    @group = Group.find(params[:id])
  end

  def ensure_frame_response
    return unless Rails.env.development?

    redirect_to root_path unless turbo_frame_request?
  end

  # Only allow a list of trusted parameters through.
  def group_params
    params.require(:group).permit(:title, :user_id)
  end
end
