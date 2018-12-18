class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :category
      t.text :text
      t.string :author

      t.timestamps
    end
  end
end
