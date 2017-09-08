require 'test_helper'

class AuthenticationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get authentications_new_url
    assert_response :success
  end

  test "should get create" do
    get authentications_create_url
    assert_response :success
  end

  test "should get pass" do
    get authentications_pass_url
    assert_response :success
  end

  test "should get fail" do
    get authentications_fail_url
    assert_response :success
  end

  test "should get error" do
    get authentications_error_url
    assert_response :success
  end

end
