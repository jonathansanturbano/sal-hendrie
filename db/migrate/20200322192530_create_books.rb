class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.string :size
      t.integer :price
      t.string :color
      t.string :age
      t.string :material
      t.integer :pages

      t.timestamps
    end
  end
end
