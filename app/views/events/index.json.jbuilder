json.array!(@events) do |event|
  json.extract! event, :id, :name, :description, :price, :url, :category, :admin_id
  json.url event_url(event, format: :json)
end
