json.extract! treino, :id, :title, :description, :day_id, :user_id, :created_at, :updated_at
json.url treino_url(treino, format: :json)
