require 'test_helper'

class AuthenticaionsControllerTest < ActionController::TestCase
  setup do
    @authenticaion = authenticaions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:authenticaions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create authenticaion" do
    assert_difference('Authenticaion.count') do
      post :create, authenticaion: { desc: @authenticaion.desc, qq: @authenticaion.qq, room_id: @authenticaion.room_id }
    end

    assert_redirected_to authenticaion_path(assigns(:authenticaion))
  end

  test "should show authenticaion" do
    get :show, id: @authenticaion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @authenticaion
    assert_response :success
  end

  test "should update authenticaion" do
    patch :update, id: @authenticaion, authenticaion: { desc: @authenticaion.desc, qq: @authenticaion.qq, room_id: @authenticaion.room_id }
    assert_redirected_to authenticaion_path(assigns(:authenticaion))
  end

  test "should destroy authenticaion" do
    assert_difference('Authenticaion.count', -1) do
      delete :destroy, id: @authenticaion
    end

    assert_redirected_to authenticaions_path
  end
end
