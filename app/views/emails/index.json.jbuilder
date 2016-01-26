json.array!(@emails) do |email|
  json.extract! email, :id, :unique_id, :name, :email, :email_confirmation
  json.url email_url(email, format: :json)
end
