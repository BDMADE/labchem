json.array!(@orders) do |order|
  json.extract! order, :id, :order_total, :date_received, :status_id, :date_shipped, :shipmentmethod_id, :shipment_cost, :tax, :notes, :total, :customer_id
  json.url order_url(order, format: :json)
end
