class CreateSwaps < ActiveRecord::Migration[5.1]
  def change
    create_table :swaps do |t|
      t.integer :giver
      t.integer :receiver
      t.integer :gift_id
      t.integer :event_id
      t.timestamps
    end
  end
end
