require 'test_helper'

class ConteoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get conteo_index_url
    assert_response :success
  end

end
