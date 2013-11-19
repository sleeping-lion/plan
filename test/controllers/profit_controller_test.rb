require 'test_helper'

class ProfitControllerTest < ActionController::TestCase
  setup do
    @profit = profit(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profit)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profit" do
    assert_difference('Profit.count') do
      post :create, profit: { title: @profit.title }
    end

    assert_redirected_to profit_path(assigns(:profit))
  end

  test "should show profit" do
    get :show, id: @profit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profit
    assert_response :success
  end

  test "should update profit" do
    patch :update, id: @profit, profit: { title: @profit.title }
    assert_redirected_to profit_path(assigns(:profit))
  end

  test "should destroy profit" do
    assert_difference('Profit.count', -1) do
      delete :destroy, id: @profit
    end

    assert_redirected_to profit_index_path
  end
end
