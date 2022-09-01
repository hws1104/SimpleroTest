# frozen_string_literal: true

class CommentsController < ApplicationController
  before_action :set_group_and_post
  before_action :set_comment, only: %i[show edit update destroy]
  before_action :enure_user_have_access_to_edit_and_delete_comment, only: %i[edit destroy]

  # GET /:group_id/posts/:post_id/comments or /:group_id/posts/:post_id/comments.json
  def index
    @comments = @post.comments.all
  end

  # GET /:group_id/posts/:post_id/comments/new
  def new
    if params[:comment_id].present?
      @parent_comment = Comment.find(params[:comment_id])
      @comment = @parent_comment.sub_comments.new
    else
      @comment = @post.comments.new
    end
  end

  # GET /:group_id/posts/:post_id/comments/1/edit
  def edit; end

  # POST /:group_id/posts/:post_id/comments or /:group_id/posts/:post_id/comments.json
  def create
    if params[:comment][:comment_id].present?
      @parent_comment = Comment.find(params[:comment][:comment_id])
      @comment = @parent_comment.sub_comments.new(comment_params)
    else
      @comment = @post.comments.new(comment_params)
    end
    @comment.user = current_user

    respond_to do |format|
      if @comment.save
        format.html { redirect_to group_post_comments_url(@group, @post), notice: 'Comment was successfully created.' }
        format.json { head :no_content }
      else
        format.html { render :index, status: :unprocessable_entity }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /:group_id/posts/:post_id/comments/1 or /:group_id/posts/:post_id/comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to group_post_comments_url(@group, @post), notice: 'Comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /:group_id/posts/:post_id/comments/1 or /:group_id/posts/:post_id/comments/1.json
  def destroy
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to group_post_comments_url(@group, @post), notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_group_and_post
    @group = Group.find(params[:group_id])
    @post = @group.posts.find(params[:post_id])
  end

  def set_post; end

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def enure_user_have_access_to_edit_and_delete_comment
    redirect_to group_post_comments_url(@group, @post), notice: "Only Comment owner and Group owner can edit/delete comment" and return unless current_user == @comment.user || current_user == @group.user
  end

  # Only allow a list of trusted parameters through.
  def comment_params
    params.require(:comment).permit(:content, :user_id, :commentable_id, :commentable_type)
  end
end
