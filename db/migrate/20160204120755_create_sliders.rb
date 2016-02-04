class CreateSliders < ActiveRecord::Migration
  def change
    create_table :sliders do |t|
      t.string :caption

      t.timestamps null: false
    end
  end
end
