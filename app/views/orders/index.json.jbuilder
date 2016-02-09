json.array!(@orders) do |order|
  json.extract! order, :id, :order_total, :date_received, :status, :date_shipped, :shipment_method, :shipment_cost, :tax, :notes, :total, :customer_id
  json.url order_url(order, format: :json)
end
