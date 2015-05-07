class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_hash
      t.string :password_salt
      t.string :crypted_password
      t.string :salt
      t.string :provider, :uid
      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
