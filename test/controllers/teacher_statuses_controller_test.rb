require 'test_helper'

class TeacherStatusesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get teacher_statuses_new_url
    assert_response :success
  end

  test "should get create" do
    get teacher_statuses_create_url
    assert_response :success
  end

  test "should get edit" do
    get teacher_statuses_edit_url
    assert_response :success
  end

  test "should get update" do
    get teacher_statuses_update_url
    assert_response :success
  end

  test "should get delete" do
    get teacher_statuses_delete_url
    assert_response :success
  end

  test "should get show" do
    get teacher_statuses_show_url
    assert_response :success
  end

end
