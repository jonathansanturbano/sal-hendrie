class AddProductsToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :total_price, :integer
    add_column :orders, :products, :string, array: true, default: []
  end
end
