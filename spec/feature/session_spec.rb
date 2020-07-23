require 'rails_helper'

RSpec.describe 'sessions_controller', type: :system do
  before :each do
    User.create(username: 'hillary')
  end

  it 'starts a session' do
    do_login('hillary')
    expect(page).to have_content 'Hi hillary'
  end

  it 'ends current session' do
    do_login('hillary')
    click_link('Sign out')
    expect(page).to have_content 'Sign in'
  end
  
end