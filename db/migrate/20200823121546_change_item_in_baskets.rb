class ChangeItemInBaskets < ActiveRecord::Migration[6.0]
  def change
    remove_column :baskets, :item, :string
    add_column :baskets, :items, :text, array: true, default: []
  end
end
