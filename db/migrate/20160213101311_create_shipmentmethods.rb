class CreateShipmentmethods < ActiveRecord::Migration
  def change
    create_table :shipmentmethods do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
