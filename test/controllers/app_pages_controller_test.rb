require 'test_helper'

class AppPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get app_pages_home_url
    assert_response :success
  end

  test "should get course" do
    get app_pages_course_url
    assert_response :success
  end

  test "should get center" do
    get app_pages_center_url
    assert_response :success
  end

  test "should get class" do
    get app_pages_class_url
    assert_response :success
  end

  test "should get tutorial" do
    get app_pages_tutorial_url
    assert_response :success
  end

  test "should get signup" do
    get app_pages_signup_url
    assert_response :success
  end

end
