# frozen_string_literal: true

module GroupsHelper
  include Rails.application.routes.url_helpers

  def join_or_edit_group_link(group_users, user, _action_name, group)
    if group.user == user
      link_to 'Edit this group', edit_group_path(group), data: { turbo_frame: 'modal' }, class: 'rounded-lg py-3 ml-2 px-5 bg-gray-100 inline-block font-medium' if group.user == user
    elsif !group_users.include?(user)
      link_to 'Join', join_group_path(group), data: { turbo_method: :post }, class: 'rounded-lg py-3 ml-2 px-5 bg-gray-100 inline-block font-medium'
    end
  end

  def get_activity_time(group)
    if group.posts.present?
      group.posts.last.updated_at
    else
      group.updated_at
    end
  end
end
