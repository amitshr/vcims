require 'test_helper'

class ExamControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get exam_new_url
    assert_response :success
  end

  test "should get create" do
    get exam_create_url
    assert_response :success
  end

  test "should get edit" do
    get exam_edit_url
    assert_response :success
  end

  test "should get update" do
    get exam_update_url
    assert_response :success
  end

  test "should get delete" do
    get exam_delete_url
    assert_response :success
  end

  test "should get show" do
    get exam_show_url
    assert_response :success
  end

end
