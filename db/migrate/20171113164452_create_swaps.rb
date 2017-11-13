class CreateSwaps < ActiveRecord::Migration[5.1]
  def change
    create_table :swaps do |t|
      t.integer :giver_id
      t.integer :receiver_id
      t.integer :gift_id
      t.integer :event_id
      t.timestamps
    end
  end
end
