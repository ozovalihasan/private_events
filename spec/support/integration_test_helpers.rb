module IntegrationTestHelpers
  def do_signup(username)
    visit root_path
    click_link('Sign up')
    fill_in('Your username:', with: username)
    click_button('SUBMIT')
  end

  def do_login(username)
    visit root_path
    fill_in('Username', with: username)
    click_button('SIGN IN')
  end
end