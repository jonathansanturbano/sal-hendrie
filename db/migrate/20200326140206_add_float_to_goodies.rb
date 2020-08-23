class AddFloatToGoodies < ActiveRecord::Migration[5.2]
  def change
    remove_column :goodies, :price, :integer
    add_column :goodies, :price, :float
  end
end
