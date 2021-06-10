class User < ApplicationRecord
  has_secure_password
  validates_presence_of :email
  validates_presence_of :password, :password_confirmation, on: [:create]
end
