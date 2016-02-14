json.array!(@carts) do |cart|
  json.extract! cart, :id, :order_id, :product_id, :quantity, :total, :uid
  json.url cart_url(cart, format: :json)
end
