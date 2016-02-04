json.array!(@sliders) do |slider|
  json.extract! slider, :id, :caption
  json.url slider_url(slider, format: :json)
end
