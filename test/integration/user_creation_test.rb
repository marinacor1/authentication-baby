require 'test_helper'
require 'capybara/rails'

class UserCreationTest < ActionDispatch::IntegrationTest
  include Capybara::DSL
  test "user can be creaeted" do
    visit new_user_path
    fill_in "Username", with: "marina"
    fill_in "Password", with: "marina1"
    click_button "Create Account"

    assert page.has_content?("Welcome, marina")
  end
end
