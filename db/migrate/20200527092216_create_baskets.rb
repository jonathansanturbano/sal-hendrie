class CreateBaskets < ActiveRecord::Migration[5.2]
  def change
    create_table :baskets do |t|
      t.string :item
      t.integer :quantity
      t.string :price_cents

      t.timestamps
    end
  end
end
