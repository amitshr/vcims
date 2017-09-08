require 'test_helper'

class QuesttionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get questtions_new_url
    assert_response :success
  end

  test "should get create" do
    get questtions_create_url
    assert_response :success
  end

  test "should get edit" do
    get questtions_edit_url
    assert_response :success
  end

  test "should get update" do
    get questtions_update_url
    assert_response :success
  end

  test "should get delete" do
    get questtions_delete_url
    assert_response :success
  end

  test "should get show" do
    get questtions_show_url
    assert_response :success
  end

end
