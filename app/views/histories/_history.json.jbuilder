json.extract! history, :id, :name, :img, :desc, :created_at, :updated_at
json.url history_url(history, format: :json)
