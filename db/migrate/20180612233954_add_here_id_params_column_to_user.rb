class AddHereIdParamsColumnToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :here_params_id, :integer
    remove_column :users, :user_name, :string
    remove_column :users, :here_id, :string
    remove_column :users, :here_password, :string
  end
end
