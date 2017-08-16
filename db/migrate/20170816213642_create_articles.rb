class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string  :publication
      t.string  :title
      t.string  :url
      t.integer :year

      t.timestamps
    end
  end
end
