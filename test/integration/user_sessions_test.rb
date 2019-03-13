require 'test_helper'

class UserSessionsTest < ActionDispatch::IntegrationTest
  test "deve existir label de user" do
    get root_url
    assert_select "label", "User"
  end
end
