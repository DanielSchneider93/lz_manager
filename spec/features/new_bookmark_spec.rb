require 'rails_helper'

describe Group do

  before :each do
    puts "\n Creating a new Group"
    @group = Group.create(title: 'Test')
  end

  it 'creates new bookmark' do
    
    puts "\n Go to Group Path for new Group"
    visit group_path(@group)

    puts "\n Check if Form exists"
    expect(page).to have_content "Add a Bookmark to #{@group.title}"

    puts "\n Fill in new Bookmark"
    fill_in 'text_field_id', with: 'www.test.de'

    puts "\n Click Create Button"
    find('input[name="commit"]').click

    puts "\n Check if new Bookmark exists"
    expect(page).to have_content('www.test.de')
  end

end
