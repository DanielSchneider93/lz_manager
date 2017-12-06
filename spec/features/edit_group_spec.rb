require 'rails_helper'

describe Group do

  before :each do
    puts "\n Creating a new Group 'Test'"
    @group = Group.create(title: 'Test')
  end

  it 'edit Group' do

    puts "\n Click edit Group Link"
    visit root_path
    click_on 'edit_group'

    puts "\n Check if on the 'Test' edit Page"
    expect(page).to have_content("Edit Group Test")

    puts "\n Edit Name of the Group to 'Test_1'"
    fill_in 'edit_field_id', with: 'Test_1'

    puts "\n Click Update Button"
    find('input[name="commit"]').click

    puts "\n Check if new Name 'Test_1' is Correct"
    expect(page).to have_content('Category: Test_1')


  end
end
