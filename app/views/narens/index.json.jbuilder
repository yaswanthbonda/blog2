json.array!(@narens) do |naren|
  json.extract! naren, :id, :name, :email, :email_confirmation
  json.url naren_url(naren, format: :json)
end
