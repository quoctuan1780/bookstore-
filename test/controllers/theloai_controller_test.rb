require 'test_helper'

class TheloaiControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get theloai_index_url
    assert_response :success
  end

end
