require 'test_helper'

class ApprenticesControllerTest < ActionController::TestCase
  setup do
    @apprentice = apprentices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apprentices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apprentice" do
    assert_difference('Apprentice.count') do
      post :create, apprentice: { email: @apprentice.email, name: @apprentice.name }
    end

    assert_redirected_to apprentice_path(assigns(:apprentice))
  end

  test "should show apprentice" do
    get :show, id: @apprentice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apprentice
    assert_response :success
  end

  test "should update apprentice" do
    patch :update, id: @apprentice, apprentice: { email: @apprentice.email, name: @apprentice.name }
    assert_redirected_to apprentice_path(assigns(:apprentice))
  end

  test "should destroy apprentice" do
    assert_difference('Apprentice.count', -1) do
      delete :destroy, id: @apprentice
    end

    assert_redirected_to apprentices_path
  end
end
