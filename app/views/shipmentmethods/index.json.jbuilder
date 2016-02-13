json.array!(@shipmentmethods) do |shipmentmethod|
  json.extract! shipmentmethod, :id, :name
  json.url shipmentmethod_url(shipmentmethod, format: :json)
end
