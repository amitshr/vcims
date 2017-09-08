require 'test_helper'

class UniversitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get universities_new_url
    assert_response :success
  end

  test "should get create" do
    get universities_create_url
    assert_response :success
  end

  test "should get edit" do
    get universities_edit_url
    assert_response :success
  end

  test "should get update" do
    get universities_update_url
    assert_response :success
  end

  test "should get delete" do
    get universities_delete_url
    assert_response :success
  end

  test "should get show" do
    get universities_show_url
    assert_response :success
  end

end
