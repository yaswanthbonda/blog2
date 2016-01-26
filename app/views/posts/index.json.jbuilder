json.array!(@posts) do |post|
  json.extract! post, :id, :post_id, :name, :email, :posttext, :posted_loc, :posted_at
  json.url post_url(post, format: :json)
end
