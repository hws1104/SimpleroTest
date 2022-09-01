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
#
FactoryBot.define do
  factory :group do
    title { 'MyString' }
  end
end
