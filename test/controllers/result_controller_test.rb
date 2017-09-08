require 'test_helper'

class ResultControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get result_new_url
    assert_response :success
  end

  test "should get create" do
    get result_create_url
    assert_response :success
  end

  test "should get edit" do
    get result_edit_url
    assert_response :success
  end

  test "should get update" do
    get result_update_url
    assert_response :success
  end

  test "should get delete" do
    get result_delete_url
    assert_response :success
  end

  test "should get show" do
    get result_show_url
    assert_response :success
  end

end
