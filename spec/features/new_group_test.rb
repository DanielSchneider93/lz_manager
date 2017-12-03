require 'rails_helper'

describe Group do

  before :each do
    puts "\n Creating a new Group"
    @group = Group.create(title: 'Test')
  end

  it 'shows the Group on the Show Page' do
    puts "\n Go to Group Page"
    visit group_path(@group)

    puts "\n Look if new Group exists"
    expect(page).to have_content(@group.title)
  end
end
