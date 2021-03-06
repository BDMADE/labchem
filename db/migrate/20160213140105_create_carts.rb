class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.references :order, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.integer :quantity
      t.integer :total
      t.string :uid

      t.timestamps null: false
    end
  end
end
