# frozen_string_literal: true

# == Schema Information
#
# Table name: groups
#
#  id          :bigint           not null, primary key
#  title       :string
#  uuid_secure :uuid             not null
#  uuid_token  :uuid             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint
#
# Indexes
#
#  index_groups_on_user_id  (user_id)
#
class Group < ApplicationRecord
  has_many :users_groups, dependent: :destroy
  has_many :users, through: :users_groups
  has_many :posts, dependent: :destroy
  belongs_to :user, class_name: 'User'
  validates :title, presence: true

  default_scope { order(created_at: :desc) }
end
