require 'test_helper'

class UserLoginTest < ActionDispatch::IntegrationTest
  include Capybara::DSL
  test "registered user can login" do
    user = User.create(username: 'marina', password: 'password')

    visit login_path
    fill_in "Username", with: "marina"
    fill_in "Password", with: "marina1"
    click_button "Login"

    assert page.has_content?("Welcome, marina")

  end
end
