require 'test_helper'

class DiscussionPostsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:discussion_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create discussion_post" do
    assert_difference('DiscussionPost.count') do
      post :create, :discussion_post => { }
    end

    assert_redirected_to discussion_post_path(assigns(:discussion_post))
  end

  test "should show discussion_post" do
    get :show, :id => discussion_posts(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => discussion_posts(:one).to_param
    assert_response :success
  end

  test "should update discussion_post" do
    put :update, :id => discussion_posts(:one).to_param, :discussion_post => { }
    assert_redirected_to discussion_post_path(assigns(:discussion_post))
  end

  test "should destroy discussion_post" do
    assert_difference('DiscussionPost.count', -1) do
      delete :destroy, :id => discussion_posts(:one).to_param
    end

    assert_redirected_to discussion_posts_path
  end
end
