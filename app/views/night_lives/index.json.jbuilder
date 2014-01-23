json.array!(@night_lives) do |night_life|
  json.extract! night_life, :id, :type, :tel, :mail, :contactp, :contactt, :pavg, :promo
  json.url night_life_url(night_life, format: :json)
end
