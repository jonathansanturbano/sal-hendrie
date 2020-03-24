class AddNameToIllustrators < ActiveRecord::Migration[5.2]
  def change
    add_column :illustrators, :name, :string
  end
end
