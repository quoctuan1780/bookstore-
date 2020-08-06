require 'test_helper'

class ChitietControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get chitiet_index_url
    assert_response :success
  end

end
