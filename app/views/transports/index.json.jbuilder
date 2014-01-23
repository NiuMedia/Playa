json.array!(@transports) do |transport|
  json.extract! transport, :id, :type, :tel, :cel, :mail, :contactp, :contactt
  json.url transport_url(transport, format: :json)
end
