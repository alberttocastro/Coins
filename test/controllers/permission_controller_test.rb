require 'test_helper'

class PermissionControllerTest < ActionDispatch::IntegrationTest
  test "should get use_permission" do
    get permission_use_permission_url
    assert_response :success
  end

end
