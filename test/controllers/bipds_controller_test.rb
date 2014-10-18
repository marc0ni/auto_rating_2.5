require 'test_helper'

class BipdsControllerTest < ActionController::TestCase
  setup do
    @bipd = bipds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bipds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bipd" do
    assert_difference('Bipd.count') do
      post :create, bipd: { medical: @bipd.medical, submission_id: @bipd.submission_id }
    end

    assert_redirected_to bipd_path(assigns(:bipd))
  end

  test "should show bipd" do
    get :show, id: @bipd
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bipd
    assert_response :success
  end

  test "should update bipd" do
    patch :update, id: @bipd, bipd: { medical: @bipd.medical, submission_id: @bipd.submission_id }
    assert_redirected_to bipd_path(assigns(:bipd))
  end

  test "should destroy bipd" do
    assert_difference('Bipd.count', -1) do
      delete :destroy, id: @bipd
    end

    assert_redirected_to bipds_path
  end
end
