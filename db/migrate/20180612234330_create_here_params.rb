class CreateHereParams < ActiveRecord::Migration[5.1]
  def change
    create_table :here_params do |t|
      t.string :here_id
      t.string :password_digest

      t.timestamps
    end
  end
end
