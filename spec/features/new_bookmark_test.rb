require 'rails_helper'

describe Group do

  before :each do
    @group = Group.create(title: 'Test')
  end

  it 'create new bookmark' do
    visit group_path(@group)
    expect(page).to have_content "Add a Bookmark to #{@group.title}"
    fill_in 'text_field_id', with: 'www.test.de'
    find('input[name="commit"]').click
    expect(page).to have_content('www.test.de')
  end

end
