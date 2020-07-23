require 'rails_helper'

RSpec.describe 'users_controller', type: :system do
  before :each do
    @user1 = User.create(username: 'hasan')
    @user2 = User.create(username: 'hillary')
  end

  it 'creates a user and logs a user in' do
    do_signup('hillary')
    expect(page).to have_content 'Sign in'
  end

  it '' do
    do_login('hillary')
    create_event('Graduation Party')
    invite(@user2, @user1,'Graduation Party')
    expect(page).to have_content @user1.username
  end

end