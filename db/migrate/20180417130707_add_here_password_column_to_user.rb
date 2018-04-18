class AddHerePasswordColumnToUser < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :here_password_digest, :here_password
    add_column :users, :here_password_confirmation, :string
  end
end
