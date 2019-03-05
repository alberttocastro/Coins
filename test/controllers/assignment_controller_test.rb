require 'test_helper'

class AssignmentControllerTest < ActionDispatch::IntegrationTest
  test "deve ver pagina assignment" do
    get assignments_url
    assert_response :success
  end
end
