require 'test_helper'

class PermissionControllerTest < ActionDispatch::IntegrationTest
  test "deve ver a pagina use_permission_management" do
    get permission_management_url
    assert_response :success
  end

end
