require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:michael)
  end

  test "login with remembering" do
    log_in_as(@user, remember_me: '1')
    # assert_not_empty cookies['remember_token']
  end

  test "login without remembering" do
    # Log in to set the cookie.
    log_in_as(@user, remember_me: '1')
    # Log in again and verify that the cookie is deleted.
    log_in_as(@user, remember_me: '0')
    # assert_empty cookies['remember_token']
  end

  test "login with valid information followed by logout" do
    get login_path
    # assert_template 'sessions/new'
    post login_path, params: { session: { email:    @user.email,
                                      password: 'password' } }
    follow_redirect!
    # assert_template 'sessions/new'
    # assert_not flash.empty?
    # assert flash.empty?
    delete logout_path
    # Simulate a user clicking logout in a second window.
    delete logout_path
    follow_redirect!
    # assert_not is_logged_in?
    get root_path
    # assert_redirected_to root_url
    # assert_select "a[href=?]", login_path
    # assert_select "a[href=?]", logout_path,      count: 0
    # assert_select "a[href=?]", user_path(@user), count: 0
  end
end
