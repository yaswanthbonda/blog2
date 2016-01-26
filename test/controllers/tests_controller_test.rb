require 'test_helper'

class TestsControllerTest < ActionController::TestCase
  setup do
    @test = tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test" do
    assert_difference('Test.count') do
      post :create, test: { created_at: @test.created_at, email: @test.email, followers_count: @test.followers_count, geo_location: @test.geo_location, hashtags: @test.hashtags, name: @test.name, retweet_count: @test.retweet_count, tweet_id: @test.tweet_id, tweettext: @test.tweettext, username: @test.username }
    end

    assert_redirected_to test_path(assigns(:test))
  end

  test "should show test" do
    get :show, id: @test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test
    assert_response :success
  end

  test "should update test" do
    patch :update, id: @test, test: { created_at: @test.created_at, email: @test.email, followers_count: @test.followers_count, geo_location: @test.geo_location, hashtags: @test.hashtags, name: @test.name, retweet_count: @test.retweet_count, tweet_id: @test.tweet_id, tweettext: @test.tweettext, username: @test.username }
    assert_redirected_to test_path(assigns(:test))
  end

  test "should destroy test" do
    assert_difference('Test.count', -1) do
      delete :destroy, id: @test
    end

    assert_redirected_to tests_path
  end
end
