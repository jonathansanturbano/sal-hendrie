class CreateFanarts < ActiveRecord::Migration[5.2]
  def change
    create_table :fanarts do |t|
      t.string :author

      t.timestamps
    end
  end
end
