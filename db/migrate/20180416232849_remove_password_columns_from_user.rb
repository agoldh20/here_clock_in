class RemovePasswordColumnsFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :password, :string
    remove_column :users, :password_confirmation, :string
    remove_column :users, :here_password, :string
    remove_column :users, :here_password_confirmation, :string
  end
end
