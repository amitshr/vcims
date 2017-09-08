require 'test_helper'

class BatchesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get batches_new_url
    assert_response :success
  end

  test "should get create" do
    get batches_create_url
    assert_response :success
  end

  test "should get edit" do
    get batches_edit_url
    assert_response :success
  end

  test "should get update" do
    get batches_update_url
    assert_response :success
  end

  test "should get delete" do
    get batches_delete_url
    assert_response :success
  end

  test "should get show" do
    get batches_show_url
    assert_response :success
  end

end
