class RemoveHerePasswordConfirmColumnFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :here_password_confirmation, :string
  end
end
