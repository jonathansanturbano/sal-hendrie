class AddDescriptionToGoodies < ActiveRecord::Migration[6.0]
  def change
    add_column :goodies, :description, :text
  end
end
