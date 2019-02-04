class Search < ApplicationRecord
  def search_articles
    articles=Article.all

    articles=articles.where(['author LIKE ?',"%#{author}%"]) if author.present?
    articles=articles.where(['category LIKE ?',category]) if category.present?
    articles=articles.where(['text LIKE ?',"%#{text}%"]) if text.present?

    return articles
  end
end
