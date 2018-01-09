class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name , null: false
      t.string :email, null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.timestamps null: false

      t.datetime :remember_created_at
    end
    add_index :users, :name, unique: true
  end
end
