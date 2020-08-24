class RemoveItemAndItemsFromBaskets < ActiveRecord::Migration[6.0]
  def change
    remove_column :baskets, :items, :string
    remove_column :baskets, :item, :string
  end
end
