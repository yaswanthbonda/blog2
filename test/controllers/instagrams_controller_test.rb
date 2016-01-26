require 'test_helper'

class InstagramsControllerTest < ActionController::TestCase
  setup do
    @instagram = instagrams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instagrams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instagram" do
    assert_difference('Instagram.count') do
      post :create, instagram: { email: @instagram.email, followed_by: @instagram.followed_by, followers_count: @instagram.followers_count, hashtags: @instagram.hashtags, name: @instagram.name, phone: @instagram.phone, post_id: @instagram.post_id, posted_at: @instagram.posted_at, posted_from_city: @instagram.posted_from_city, textbox: @instagram.textbox }
    end

    assert_redirected_to instagram_path(assigns(:instagram))
  end

  test "should show instagram" do
    get :show, id: @instagram
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @instagram
    assert_response :success
  end

  test "should update instagram" do
    patch :update, id: @instagram, instagram: { email: @instagram.email, followed_by: @instagram.followed_by, followers_count: @instagram.followers_count, hashtags: @instagram.hashtags, name: @instagram.name, phone: @instagram.phone, post_id: @instagram.post_id, posted_at: @instagram.posted_at, posted_from_city: @instagram.posted_from_city, textbox: @instagram.textbox }
    assert_redirected_to instagram_path(assigns(:instagram))
  end

  test "should destroy instagram" do
    assert_difference('Instagram.count', -1) do
      delete :destroy, id: @instagram
    end

    assert_redirected_to instagrams_path
  end
end
