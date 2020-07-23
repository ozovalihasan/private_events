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
  
end