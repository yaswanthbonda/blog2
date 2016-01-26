require 'test_helper'

class SirisControllerTest < ActionController::TestCase
  setup do
    @siri = siris(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:siris)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create siri" do
    assert_difference('Siri.count') do
      post :create, siri: { email: @siri.email, email_confirmation: @siri.email_confirmation, name: @siri.name }
    end

    assert_redirected_to siri_path(assigns(:siri))
  end

  test "should show siri" do
    get :show, id: @siri
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @siri
    assert_response :success
  end

  test "should update siri" do
    patch :update, id: @siri, siri: { email: @siri.email, email_confirmation: @siri.email_confirmation, name: @siri.name }
    assert_redirected_to siri_path(assigns(:siri))
  end

  test "should destroy siri" do
    assert_difference('Siri.count', -1) do
      delete :destroy, id: @siri
    end

    assert_redirected_to siris_path
  end
end
