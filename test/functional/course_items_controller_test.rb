require 'test_helper'

class CourseItemsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_item" do
    assert_difference('CourseItem.count') do
      post :create, :course_item => { }
    end

    assert_redirected_to course_item_path(assigns(:course_item))
  end

  test "should show course_item" do
    get :show, :id => course_items(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => course_items(:one).to_param
    assert_response :success
  end

  test "should update course_item" do
    put :update, :id => course_items(:one).to_param, :course_item => { }
    assert_redirected_to course_item_path(assigns(:course_item))
  end

  test "should destroy course_item" do
    assert_difference('CourseItem.count', -1) do
      delete :destroy, :id => course_items(:one).to_param
    end

    assert_redirected_to course_items_path
  end
end
