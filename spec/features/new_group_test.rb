require 'rails_helper'

describe Group do

  before :each do
    @group = Group.create(title: 'Test')
  end

  it 'shows the Group on the Show Page' do
    visit group_path(@group)
    expect(page).to have_content(@group.title)
  end
end
