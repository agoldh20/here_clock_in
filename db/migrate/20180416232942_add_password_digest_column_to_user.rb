class AddPasswordDigestColumnToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :password_digest, :string
    add_column :users, :here_password_digest, :string
  end
end
