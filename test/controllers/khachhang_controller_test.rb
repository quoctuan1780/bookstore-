require 'test_helper'

class KhachhangControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get khachhang_index_url
    assert_response :success
  end

end
