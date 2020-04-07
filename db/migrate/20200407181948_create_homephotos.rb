class CreateHomephotos < ActiveRecord::Migration[5.2]
  def change
    create_table :homephotos do |t|

      t.timestamps
    end
  end
end
