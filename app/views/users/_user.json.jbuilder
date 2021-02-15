json.extract! user, :id, :name, :description,:created_at, :updated_at, :facebook, :twitter, :instagram
json.url user_url(user, format: :json)
