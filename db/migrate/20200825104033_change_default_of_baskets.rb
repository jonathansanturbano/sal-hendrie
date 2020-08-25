class ChangeDefaultOfBaskets < ActiveRecord::Migration[6.0]
  def change
    change_column_default :baskets, :quantity, from: nil, to: 0
  end
end
