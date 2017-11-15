class CreateGifts < ActiveRecord::Migration[5.1]
  def change
    create_table :gifts do |t|

      t.string :name
      t.float :price
      t.integer :category_id
      t.timestamps
    end
  end
end
