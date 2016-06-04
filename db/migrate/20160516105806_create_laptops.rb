class CreateLaptops < ActiveRecord::Migration
  def change
    create_table :laptops do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.integer :quantity
      t.string   :ram
      t.string   :cpu
      t.decimal  :weight
      t.timestamps null: false
    end
  end
end
