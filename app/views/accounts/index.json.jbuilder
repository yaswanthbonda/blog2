json.array!(@accounts) do |account|
  json.extract! account, :id, :account_number, :name, :email, :phone, :city_name, :state
  json.url account_url(account, format: :json)
end
