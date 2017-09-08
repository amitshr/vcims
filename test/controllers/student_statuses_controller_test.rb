require 'test_helper'

class StudentStatusesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get student_statuses_new_url
    assert_response :success
  end

  test "should get create" do
    get student_statuses_create_url
    assert_response :success
  end

  test "should get edit" do
    get student_statuses_edit_url
    assert_response :success
  end

  test "should get update" do
    get student_statuses_update_url
    assert_response :success
  end

  test "should get delete" do
    get student_statuses_delete_url
    assert_response :success
  end

  test "should get show" do
    get student_statuses_show_url
    assert_response :success
  end

end
