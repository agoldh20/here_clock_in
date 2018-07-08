class User < ApplicationRecord
  has_secure_password

  has_many :here_params

  # EC: This user_name validation is the reason why the user creation form (/users/new) is failing.
  # Validations are run when we attempt to create or update a record.
  # So even though you're not passing a user_name field to your CREATE method in users_controller.rb,
  # this validation is expecting user_name to be there.
  # It looks like the user_name column was removed from the users table, which is why
  # Active Model is throwing a "No Method" error.
  # We can talk Tuesday about what data you'd like to consider unique for user authentication
  # (username or email)
  # and how to add a user_name field if you want to use that instead of email.
  validates :user_name, uniqueness: true
end
