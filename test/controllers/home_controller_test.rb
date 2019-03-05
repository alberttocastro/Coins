require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "deve ver pagina home" do
    get home_url
    assert_response :success
  end

  test "deve ver pagina login" do
    get login_url
    assert_response :success
  end

  test "deve ver pagina view" do
    get view_url(address_id: 298486374)
    assert_response :success
  end

  test "deve ver pagina edit" do
    get edit_url(id: 1)
    assert_response :success
  end

end
