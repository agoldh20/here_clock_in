class AddAllColumnsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :email, :string
    add_column :users, :password, :string
    add_column :users, :password_confirmation, :string
    add_column :users, :here_id, :string
    add_column :users, :here_password, :string
    add_column :users, :here_password_confirmation, :string
  end
end
