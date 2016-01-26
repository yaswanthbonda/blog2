require 'test_helper'

class NarensControllerTest < ActionController::TestCase
  setup do
    @naren = narens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:narens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create naren" do
    assert_difference('Naren.count') do
      post :create, naren: { email: @naren.email, email_confirmation: @naren.email_confirmation, name: @naren.name }
    end

    assert_redirected_to naren_path(assigns(:naren))
  end

  test "should show naren" do
    get :show, id: @naren
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @naren
    assert_response :success
  end

  test "should update naren" do
    patch :update, id: @naren, naren: { email: @naren.email, email_confirmation: @naren.email_confirmation, name: @naren.name }
    assert_redirected_to naren_path(assigns(:naren))
  end

  test "should destroy naren" do
    assert_difference('Naren.count', -1) do
      delete :destroy, id: @naren
    end

    assert_redirected_to narens_path
  end
end
