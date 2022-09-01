# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'groups/new', type: :view do
  before do
    assign(:group, Group.new(
                     title: 'MyString'
                   ))
  end

  it 'renders new group form' do
    render

    assert_select 'form[action=?][method=?]', groups_path, 'post' do
      assert_select 'input[name=?]', 'group[title]'
    end
  end
end
