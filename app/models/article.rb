class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, :text, :author, presence: true, length: {minimum: 5}
  validates :category, presence: true

  def self.search(search)
    if search
      where(["title LIKE ?","%#{search}%"])
    else
      all
    end
  end
end
