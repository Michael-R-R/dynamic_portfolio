require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get projects" do
    get pages_projects_url
    assert_response :success
  end

  test "should get articles" do
    get pages_articles_url
    assert_response :success
  end

  test "should get experience" do
    get pages_experience_url
    assert_response :success
  end

  test "should get aboutme" do
    get pages_aboutme_url
    assert_response :success
  end
end
