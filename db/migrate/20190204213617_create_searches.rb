class CreateSearches < ActiveRecord::Migration[5.2]
  def change
    create_table :searches do |t|
      t.string :author
      t.string :category
      t.string :text

      t.timestamps
    end
  end
end
