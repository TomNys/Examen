require 'test_helper'

class CourseSupervisionCrossoversControllerTest < ActionController::TestCase
  setup do
    @course_supervision_crossover = course_supervision_crossovers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_supervision_crossovers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_supervision_crossover" do
    assert_difference('CourseSupervisionCrossover.count') do
      post :create, course_supervision_crossover: { course_crossover2_id: @course_supervision_crossover.course_id, supervision_crossover_id: @course_supervision_crossover.supervision_id }
    end

    assert_redirected_to course_supervision_crossover_path(assigns(:course_supervision_crossover))
  end

  test "should show course_supervision_crossover" do
    get :show, id: @course_supervision_crossover
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_supervision_crossover
    assert_response :success
  end

  test "should update course_supervision_crossover" do
    patch :update, id: @course_supervision_crossover, course_supervision_crossover: { course_crossover2_id: @course_supervision_crossover.course_id, supervision_crossover_id: @course_supervision_crossover.supervision_id }
    assert_redirected_to course_supervision_crossover_path(assigns(:course_supervision_crossover))
  end

  test "should destroy course_supervision_crossover" do
    assert_difference('CourseSupervisionCrossover.count', -1) do
      delete :destroy, id: @course_supervision_crossover
    end

    assert_redirected_to course_supervision_crossovers_path
  end
end
