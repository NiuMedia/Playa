json.array!(@hotels) do |hotel|
  json.extract! hotel, :id, :type, :tel, :mail, :contactp, :contactt, :pta, :ptb, :pavg, :stars
  json.url hotel_url(hotel, format: :json)
end
