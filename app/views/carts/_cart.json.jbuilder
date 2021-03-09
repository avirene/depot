json.extract! cart, :id, :created_at, :updated_at, :deleted_at
json.url cart_url(cart, format: :json)
