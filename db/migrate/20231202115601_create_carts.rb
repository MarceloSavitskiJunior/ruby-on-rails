class CreateCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :carts do |t|
      t.string :name
      t.integer :totalPurchases
      t.boolean :bought

      t.timestamps
    end
  end
end
