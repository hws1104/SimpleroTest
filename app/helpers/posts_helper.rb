# frozen_string_literal: true

module PostsHelper
  def member_name(post, user)
    if post.user == user
      'You'
    else
      post.user.name
    end
  end
end
