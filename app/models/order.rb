class Order < ActiveRecord::Base
  belongs_to :status
  belongs_to :shipmentmethod
  belongs_to :customer
end
