class ChangeColumnDefaultOfBasketItems < ActiveRecord::Migration[6.0]
  def change
    change_column_default :basket_items, :quantity, from: nil, to: 1
  end
end
