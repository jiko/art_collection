json.array!(@pieces) do |piece|
  json.extract! piece, :id, :price, :sold, :artist_id, :name
  json.url piece_url(piece, format: :json)
end
