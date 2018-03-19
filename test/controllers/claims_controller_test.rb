require 'test_helper'

class ClaimsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get claims_index_url
    assert_response :success
  end

end
