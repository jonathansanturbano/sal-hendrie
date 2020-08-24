class CreateBasketItems < ActiveRecord::Migration[6.0]
  def change
    create_table :basket_items do |t|
      t.references :buyable, polymorphic: true, null: false
      t.integer :quantity, null: false, default: 1

      t.timestamps
    end
  end
end
