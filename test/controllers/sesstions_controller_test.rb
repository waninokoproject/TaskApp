require 'test_helper'

class SesstionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sesstions_new_url
    assert_response :success
  end

end
