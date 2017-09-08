require 'test_helper'

class QualificationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get qualifications_new_url
    assert_response :success
  end

  test "should get create" do
    get qualifications_create_url
    assert_response :success
  end

  test "should get edit" do
    get qualifications_edit_url
    assert_response :success
  end

  test "should get update" do
    get qualifications_update_url
    assert_response :success
  end

  test "should get delete" do
    get qualifications_delete_url
    assert_response :success
  end

  test "should get show" do
    get qualifications_show_url
    assert_response :success
  end

end
