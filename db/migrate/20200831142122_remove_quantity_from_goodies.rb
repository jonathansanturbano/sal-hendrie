class RemoveQuantityFromGoodies < ActiveRecord::Migration[6.0]
  def change
    remove_column :goodies, :quantity, :string
    add_column :books, :category, :string
  end
end
