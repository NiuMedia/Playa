json.array!(@tours) do |tour|
  json.extract! tour, :id, :type, :tel, :mail, :contactp, :contactt, :pavg
  json.url tour_url(tour, format: :json)
end
