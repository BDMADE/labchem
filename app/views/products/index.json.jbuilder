json.array!(@products) do |product|
  json.extract! product, :id, :category_id, :name, :unit, :purchase_price, :unit_price, :description
  json.url product_url(product, format: :json)
end
