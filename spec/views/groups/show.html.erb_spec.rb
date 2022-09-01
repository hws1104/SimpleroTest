# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'groups/show', type: :view do
  before do
    @group = assign(:group, Group.create!(
                              title: 'Title'
                            ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Title/)
  end
end
