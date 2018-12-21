class User < ApplicationRecord
  attr_accessor :password
  validates :username, presence: true, length:{minimum: 5}
  validates :password, presence: true, length:{minimum: 8}
  validates_confirmation_of :password, :on => :create
  validates_uniqueness_of :username
  has_secure_password
end
