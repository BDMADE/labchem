class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :order_total
      t.datetime :date_received
      t.string :status
      t.datetime :date_shipped
      t.string :shipment_method
      t.integer :shipment_cost
      t.integer :tax
      t.text :notes
      t.integer :total
      t.references :customer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
