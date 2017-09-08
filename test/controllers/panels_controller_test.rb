require 'test_helper'

class PanelsControllerTest < ActionDispatch::IntegrationTest
  test "should get student" do
    get panels_student_url
    assert_response :success
  end

  test "should get teacher" do
    get panels_teacher_url
    assert_response :success
  end

  test "should get admin" do
    get panels_admin_url
    assert_response :success
  end

end
