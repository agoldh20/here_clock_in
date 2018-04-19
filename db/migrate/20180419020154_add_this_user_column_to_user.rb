class AddThisUserColumnToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :this_user, :boolean
  end
end
