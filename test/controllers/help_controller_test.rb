require 'test_helper'

class HelpControllerTest < ActionDispatch::IntegrationTest
  test "deve ver pagina help" do
    get help_url
    assert_response :success
  end
end
