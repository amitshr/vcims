require 'test_helper'

class SesionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sesions_new_url
    assert_response :success
  end

  test "should get create" do
    get sesions_create_url
    assert_response :success
  end

  test "should get edit" do
    get sesions_edit_url
    assert_response :success
  end

  test "should get update" do
    get sesions_update_url
    assert_response :success
  end

  test "should get delete" do
    get sesions_delete_url
    assert_response :success
  end

  test "should get show" do
    get sesions_show_url
    assert_response :success
  end

end
