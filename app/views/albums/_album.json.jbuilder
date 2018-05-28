json.extract! album, :id, :name, :release_date, :artist_id, :created_at, :updated_at
json.url album_url(album, format: :json)
