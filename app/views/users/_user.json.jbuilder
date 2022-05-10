json.extract! user, :id, :name, :last_name, :gender, :age, :created_date, :updated_date, :created_at, :updated_at
json.url user_url(user, format: :json)
