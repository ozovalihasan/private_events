require 'rails_helper'

RSpec.describe 'Users', type: :system do
  describe 'sign_in page' do
    it 'shows the right content' do
      visit sign_in_path
      expect(page).to have_content('Username')
    end
  end

  describe 'New user page' do
    it 'shows the right content' do
      visit new_user_path
      expect(page).to have_content('Your username')
    end
  end
end