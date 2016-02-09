json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :phone1, :phone2, :email, :company, :delivery_address, :uid
  json.url customer_url(customer, format: :json)
end
