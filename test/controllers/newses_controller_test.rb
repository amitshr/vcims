require 'test_helper'

class NewsesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get newses_new_url
    assert_response :success
  end

  test "should get create" do
    get newses_create_url
    assert_response :success
  end

  test "should get edit" do
    get newses_edit_url
    assert_response :success
  end

  test "should get update" do
    get newses_update_url
    assert_response :success
  end

  test "should get delete" do
    get newses_delete_url
    assert_response :success
  end

  test "should get show" do
    get newses_show_url
    assert_response :success
  end

  test "should get pofile" do
    get newses_pofile_url
    assert_response :success
  end

end
