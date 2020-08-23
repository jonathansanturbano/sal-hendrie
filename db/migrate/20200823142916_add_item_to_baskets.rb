class AddItemToBaskets < ActiveRecord::Migration[6.0]
  def change
    add_column :baskets, :item, :string
  end
end
