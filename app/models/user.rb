class User < ApplicationRecord
  has_secure_password

  has_many :here_params

  validates :user_name, uniqueness: true
end
