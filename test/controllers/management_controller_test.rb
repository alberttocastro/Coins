require 'test_helper'

class ManagementControllerTest < ActionDispatch::IntegrationTest
  test 'deve ver pagina management' do
    get management_path
    assert_response :success
  end

  test 'deve aceitar nova sugestao de endereco' do
    post accept_suggestion_path, 
    assert_respose :success
  end
end
