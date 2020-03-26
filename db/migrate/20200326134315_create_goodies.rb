class CreateGoodies < ActiveRecord::Migration[5.2]
  def change
    create_table :goodies do |t|
      t.string :title
      t.integer :price
      t.integer :quantity

      t.timestamps
    end
  end
end
