json.extract! event, :id, :titulo, :inicio, :fin, clasificacion, tipo_evento :created_at, :updated_at
json.url event_url(event, format: :json)
