json.array!(@services) do |service|
  json.extract! service, :id, :name, :logo, :cat, :type
  json.url service_url(service, format: :json)
end
