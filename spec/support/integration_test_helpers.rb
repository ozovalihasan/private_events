module IntegrationTestHelpers
  def do_signup(username)
    visit root_path
    click_link('Sign up')
    fill_in('Your username:', with: username)
    click_button('sign_up')
  end

  def do_login(username)
    visit root_path
    fill_in('Username', with: username)
    click_button('sign_in')
  end

  def create_event(title)
    click_link('Create Event')
    fill_in('Title', with: title)
    page.find('#event_date').set("2020-10-23")
    fill_in('Description', with: 'Very good party')
    click_button('commit')
  end

  def invite(creator,invited_user,event)
    visit root_path
    click_link(creator.username)
    click_link(event)
    select invited_user.username, :from => "user_id"
  end
  
end