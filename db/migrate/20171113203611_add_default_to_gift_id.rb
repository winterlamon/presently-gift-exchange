class AddDefaultToGiftId < ActiveRecord::Migration[5.1]
  def change
    change_column :swaps, :gift_id, :integer, default: nil
  end
end
