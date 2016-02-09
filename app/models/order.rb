class Order < ActiveRecord::Base
  belongs_to :customer
  enum status:[:inprocess,:shipped,:delivered,:abandoned]
  enum shipment_method:[:byperson,:bycourier]
end
