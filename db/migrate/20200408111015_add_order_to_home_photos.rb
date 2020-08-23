class AddOrderToHomePhotos < ActiveRecord::Migration[5.2]
  def change
    add_column :homephotos, :order, :integer
  end
end
