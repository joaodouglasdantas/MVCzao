require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get title" do
    get posts_title_url
    assert_response :success
  end

  test "should get description:text" do
    get posts_description:text_url
    assert_response :success
  end
end
