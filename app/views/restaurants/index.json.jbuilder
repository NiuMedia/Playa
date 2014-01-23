json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :type, :tel, :mail, :contactp, :contactt, :pavg, :promo, :serviceType
  json.url restaurant_url(restaurant, format: :json)
end
