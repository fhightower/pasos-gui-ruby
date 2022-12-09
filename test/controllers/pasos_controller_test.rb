require "test_helper"

class PasosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pasos_index_url
    assert_response :success
  end
end
