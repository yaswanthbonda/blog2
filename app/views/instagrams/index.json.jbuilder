json.array!(@instagrams) do |instagram|
  json.extract! instagram, :id, :post_id, :name, :phone, :email, :textbox, :hashtags, :followers_count, :followed_by, :posted_from_city, :posted_at
  json.url instagram_url(instagram, format: :json)
end
