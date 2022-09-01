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
require 'rails_helper'

RSpec.describe Group, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
