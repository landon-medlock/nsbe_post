json.array!(@users) do |user|
  json.extract! user, :id, :name, :user_name, :bio
  json.url user_url(user, format: :json)
end
