require 'test_helper'

class VcControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get vc_home_url
    assert_response :success
  end

  test "should get contact" do
    get vc_contact_url
    assert_response :success
  end

  test "should get about" do
    get vc_about_url
    assert_response :success
  end

  test "should get course" do
    get vc_course_url
    assert_response :success
  end

  test "should get class" do
    get vc_class_url
    assert_response :success
  end

  test "should get tutorial" do
    get vc_tutorial_url
    assert_response :success
  end

  test "should get signup" do
    get vc_signup_url
    assert_response :success
  end

end
