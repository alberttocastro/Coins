require 'test_helper'

class OverviewControllerTest < ActionDispatch::IntegrationTest
  test 'deve ver a pagina overview' do
    get overview_url
    assert_response :success
  end
end
