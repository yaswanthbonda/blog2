json.array!(@tweets) do |tweet|
  json.extract! tweet, :id, :tweet_id, :username, :name, :email, :tweettext, :hashtags, :followers_count, :retweet_count, :geo_location, :created_at
  json.url tweet_url(tweet, format: :json)
end
