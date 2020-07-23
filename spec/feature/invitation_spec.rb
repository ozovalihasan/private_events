require 'rails_helper'

RSpec.describe 'invitations_controller', type: :system do
  before :each do
    @user1 = User.create(username: 'hasan')
    @user2 = User.create(username: 'hillary')
  end

  it 'invites user to event' do
    do_login('hillary')
    create_event('Graduation Party')
    invite(@user2, @user1, 'Graduation Party')
    expect(page).to have_content @user1.username
  end
end
