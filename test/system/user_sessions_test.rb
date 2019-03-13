require "application_system_test_case"

class UserSessionsTest < ApplicationSystemTestCase
  test "deve existir label de user" do
    visit root_url
    assert_selector "label", text: "User"
  end
  
  # test "visiting the index" do
  #   visit user_sessions_url
  #
  #   assert_selector "h1", text: "UserSession"
  # end
end
