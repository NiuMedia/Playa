json.array!(@locations) do |location|
  json.extract! location, :id, :name, :state
  json.url location_url(location, format: :json)
end
