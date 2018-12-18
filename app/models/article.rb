class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, :text, :author, presence: true, length: {minimum: 5}
  validates :category, presence: true
end
