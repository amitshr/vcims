require 'test_helper'

class PanlesControllerTest < ActionDispatch::IntegrationTest
  test "should get student" do
    get panles_student_url
    assert_response :success
  end

  test "should get teacher" do
    get panles_teacher_url
    assert_response :success
  end

  test "should get admin" do
    get panles_admin_url
    assert_response :success
  end

end
