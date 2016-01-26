json.array!(@siris) do |siri|
  json.extract! siri, :id, :name, :email, :email_confirmation
  json.url siri_url(siri, format: :json)
end
