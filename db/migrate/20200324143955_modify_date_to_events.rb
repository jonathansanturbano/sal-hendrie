class ModifyDateToEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :time, :time
    add_column :events, :time, :datetime
  end
end
