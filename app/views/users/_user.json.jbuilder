json.extract! user, :id, :email, :level, :avatar
json.url user_path(user, format: :json)
