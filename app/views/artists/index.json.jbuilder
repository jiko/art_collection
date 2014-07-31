json.array!(@artists) do |artist|
  json.extract! artist, :id, :name, :bio, :contact
  json.url artist_url(artist, format: :json)
end
