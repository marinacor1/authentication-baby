require 'test_helper'

class UserLoginTest < ActionDispatch::IntegrationTest
  test "registered user can login" do
    user = User.create(username: 'marina', password: 'password')

    visit login_path
    fill_in "Username", with: "marina"
    fill_in "Password", with: "password"
    click_button "Login"

    assert page.has_content?("Welcome, marina")

  end
end
