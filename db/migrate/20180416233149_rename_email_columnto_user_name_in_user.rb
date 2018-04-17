class RenameEmailColumntoUserNameInUser < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :email, :user_name
  end
end
