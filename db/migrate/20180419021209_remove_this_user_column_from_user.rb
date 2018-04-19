class RemoveThisUserColumnFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :this_user, :boolean
  end
end
