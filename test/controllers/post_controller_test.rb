require "test_helper"

class PostControllerTest < ActionDispatch::IntegrationTest
  test "should get title" do
    get post_title_url
    assert_response :success
  end

  test "should get description:text" do
    get post_description:text_url
    assert_response :success
  end
end
