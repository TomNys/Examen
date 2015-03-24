require 'test_helper'

class StudentClassCrossoversControllerTest < ActionController::TestCase
  setup do
    @student_course_crossover = student_class_crossovers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_course_crossovers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_course_crossover" do
    assert_difference('StudentCourseCrossover.count') do
      post :create, student_course_crossover: { course_crossover1_id: @student_course_crossover.class_id, student_crossover_id: @student_course_crossover.student_id }
    end

    assert_redirected_to student_class_crossover_path(assigns(:student_course_crossover))
  end

  test "should show student_course_crossover" do
    get :show, id: @student_course_crossover
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_course_crossover
    assert_response :success
  end

  test "should update student_course_crossover" do
    patch :update, id: @student_course_crossover, student_course_crossover: { course_crossover1_id: @student_course_crossover.class_id, student_crossover_id: @student_course_crossover.student_id }
    assert_redirected_to student_class_crossover_path(assigns(:student_course_crossover))
  end

  test "should destroy student_course_crossover" do
    assert_difference('StudentCourseCrossover.count', -1) do
      delete :destroy, id: @student_course_crossover
    end

    assert_redirected_to student_class_crossovers_path
  end
end
