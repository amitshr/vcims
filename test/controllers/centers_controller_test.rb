require 'test_helper'

class CentersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get centers_new_url
    assert_response :success
  end

  test "should get create" do
    get centers_create_url
    assert_response :success
  end

  test "should get edit" do
    get centers_edit_url
    assert_response :success
  end

  test "should get update" do
    get centers_update_url
    assert_response :success
  end

  test "should get delete" do
    get centers_delete_url
    assert_response :success
  end

  test "should get show" do
    get centers_show_url
    assert_response :success
  end

end
