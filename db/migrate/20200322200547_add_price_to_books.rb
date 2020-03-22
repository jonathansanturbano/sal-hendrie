class AddPriceToBooks < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :price, :integer
    add_column :books, :price, :float
  end
end
