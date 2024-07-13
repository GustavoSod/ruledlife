json.extract! dish, :id, :title, :description, :calories, :image, :user_id, :day_id, :created_at, :updated_at
json.url dish_url(dish, format: :json)
