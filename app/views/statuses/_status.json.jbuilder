json.extract! status, :id, :title, :active, :created_at, :updated_at
json.url status_url(status, format: :json)
