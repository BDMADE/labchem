class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name,:limit=>255
      t.integer :phone1,:limit=>16
      t.integer :phone2,:limit=>16
      t.string :email
      t.string :company
      t.text :delivery_address
      t.string :uid

      t.timestamps null: false
    end
  end
end
