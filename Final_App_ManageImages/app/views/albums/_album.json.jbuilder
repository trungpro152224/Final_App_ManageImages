json.extract! album, :id, :name, :description, :is_private, :created_at, :updated_at
json.url album_url(album, format: :json)
