class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.text :bio
      t.string :cat_1
      t.string :cat_2
      t.string :cat_3
      t.timestamps
    end
  end
end
