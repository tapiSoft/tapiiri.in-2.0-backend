require 'test_helper'

class PowerliftingsControllerTest < ActionController::TestCase
  setup do
    @powerlifting = powerliftings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:powerliftings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create powerlifting" do
    assert_difference('Powerlifting.count') do
      post :create, powerlifting: { move: @powerlifting.move, result: @powerlifting.result }
    end

    assert_redirected_to powerlifting_path(assigns(:powerlifting))
  end

  test "should show powerlifting" do
    get :show, id: @powerlifting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @powerlifting
    assert_response :success
  end

  test "should update powerlifting" do
    patch :update, id: @powerlifting, powerlifting: { move: @powerlifting.move, result: @powerlifting.result }
    assert_redirected_to powerlifting_path(assigns(:powerlifting))
  end

  test "should destroy powerlifting" do
    assert_difference('Powerlifting.count', -1) do
      delete :destroy, id: @powerlifting
    end

    assert_redirected_to powerliftings_path
  end
end
