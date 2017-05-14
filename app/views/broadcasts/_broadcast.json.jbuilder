json.extract! broadcast, :id, :title, :body, :customer_id, :created_at, :updated_at
json.url broadcast_url(broadcast, format: :json)