require 'test_helper'

class DathangControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dathang_index_url
    assert_response :success
  end

end
