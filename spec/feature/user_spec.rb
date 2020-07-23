require 'rails_helper'
require './spec/support/integration_test_helpers.rb'

RSpec.describe 'users_controller', type: :system do
  before :each do
    User.create(username: 'hillary')
  end

  it 'creates a user and logs a user in' do
    do_signup('hillary')
    do_login('hillary')
    expect(page).to have_content 'Past Events'
  end

end