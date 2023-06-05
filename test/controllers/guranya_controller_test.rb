require "test_helper"

class GuranyaControllerTest < ActionDispatch::IntegrationTest

  test "should get make_joke" do
    get make_joke_url
    assert_response :redirect
    assert_redirected_to main_path
  end
  test "should get num_fact" do
    get num_fact_url
    assert_response :redirect
    assert_redirected_to main_path
  end
  test "should get cat_breed" do
    get cat_breed_url
    assert_response :redirect
    assert_redirected_to main_path
  end

  test "should get make_joke index" do
    get make_joke_url
    assert_equal "make_joke", @controller.action_name
    assert_nil nil, @request.media_type
  end
  test "should get num_fact index" do
    get num_fact_url
    assert_equal "num_fact", @controller.action_name
    assert_nil nil, @request.media_type
  end
  test "should get cat_breed index" do
    get cat_breed_url
    assert_equal "cat_breed", @controller.action_name
    assert_nil nil, @request.media_type
  end

  test "ajax requests" do
    get make_joke_url, xhr: true
    get cat_breed_url, xhr: true
    get num_fact_url, xhr: true
  end

  test "routes" do
    assert_generates "/", controller:"guranya", action:"main"
    assert_generates "/make_joke", controller:"guranya", action:"make_joke"
    assert_generates "/num_fact", controller:"guranya", action:"num_fact"
    assert_generates "/cat_breed", controller:"guranya", action:"cat_breed"
  end

end