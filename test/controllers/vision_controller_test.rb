require 'test_helper'

class VisionControllerTest < ActionController::TestCase
  setup do
    @vision = vision(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vision)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vision" do
    assert_difference('Vision.count') do
      post :create, vision: { title: @vision.title }
    end

    assert_redirected_to vision_path(assigns(:vision))
  end

  test "should show vision" do
    get :show, id: @vision
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vision
    assert_response :success
  end

  test "should update vision" do
    patch :update, id: @vision, vision: { title: @vision.title }
    assert_redirected_to vision_path(assigns(:vision))
  end

  test "should destroy vision" do
    assert_difference('Vision.count', -1) do
      delete :destroy, id: @vision
    end

    assert_redirected_to vision_index_path
  end
end
