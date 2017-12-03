require 'rails_helper'

describe Group do

  before :each do
    puts "\n Creating a new Group"
    @group = Group.create(title: 'Test')
  end

  it 'delete Group' do

    puts "\n Click delete Group Link"
    visit root_path
    click_on 'delete_group'

    puts "\n Check if Group is deleted"
    expect(page).to_ have_content(@group.title)
  end
end
