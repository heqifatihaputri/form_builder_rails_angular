json.extract! content, :id, :title, :description, :button_text, :created_at, :updated_at
json.url content_url(content, format: :json)
