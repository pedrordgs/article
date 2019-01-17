class User < ApplicationRecord
  validates :username, presence: true, length:{minimum: 5}
  validates :password, presence: true, length:{minimum: 8}
  validates_uniqueness_of :username
  has_secure_password
end
