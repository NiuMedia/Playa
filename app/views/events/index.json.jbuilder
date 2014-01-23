json.array!(@events) do |event|
  json.extract! event, :id, :type, :location_name, :tel, :mail, :contactp, :contactt, :pavg, :place, :music, :activity
  json.url event_url(event, format: :json)
end
