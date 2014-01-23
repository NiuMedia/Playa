json.array!(@shoppings) do |shopping|
  json.extract! shopping, :id, :type, :tel, :mail, :contactp, :contactt, :products
  json.url shopping_url(shopping, format: :json)
end
