class AddHereInfoToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :here_id, :string
    add_column :users, :here_password, :string
    remove_column :users, :here_params_id, :integer
    drop_table :here_params
  end
end
