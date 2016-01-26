json.array!(@tests) do |test|
  json.extract! test, :id, :tweet_id, :username, :name, :email, :tweettext, :hashtags, :followers_count, :retweet_count, :geo_location, :created_at
  json.url test_url(test, format: :json)
end
