require 'rails_helper'

RSpec.describe 'users_controller', type: :system do
  before :each do
    @user1 = User.create(username: 'hasan')
    @user2 = User.create(username: 'hillary')
  end

  it 'creates an event' do
    do_login('hillary')
    create_event('Graduation Party')
    expect(page).to have_content 'Graduation Party'
  end

  it 'shows an event' do
    do_login('hillary')
    create_event('Graduation Party')
    expect(page).to have_content 'Graduation Party'
  end

  it 'shows a single events page' do
    do_login('hillary')
    create_event('Graduation Party')
    click_link('Graduation Party')
    expect(page).to have_content 'Created by'
  end

  it 'lists all events when you sign in' do
    do_login('hillary')
    expect(page).to have_content 'Upcoming Events'
  end
  
end