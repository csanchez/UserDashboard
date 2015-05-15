class AddLoginToUsers < ActiveRecord::Migration
  def change
    add_column :users, :login, :string
    add_column :users, :name, :string
    add_column :users, :lastname, :string
    add_column :users, :phone_number, :string
    add_column :users, :cell_number, :string
    add_column :users, :is_guest, :bool
  end
end
