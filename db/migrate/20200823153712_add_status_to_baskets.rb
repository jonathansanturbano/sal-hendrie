class AddStatusToBaskets < ActiveRecord::Migration[6.0]
  def change
    add_column :baskets, :status, :string, default: "adding"
  end
end
