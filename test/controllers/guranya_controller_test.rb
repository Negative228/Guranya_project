require "test_helper"

class GuranyaControllerTest < ActionDispatch::IntegrationTest
  test "should get make_joke" do
    get guranya_make_joke_url
    assert_response :success
  end
end
