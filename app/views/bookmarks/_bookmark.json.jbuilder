json.extract! bookmark, :id, :name, :url, :position, :data, :created_at, :updated_at
json.url bookmark_url(bookmark, format: :json)
