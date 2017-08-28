class CreateArticle < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string  :publication, null: false
      t.string  :title, null: false
      t.string  :url, null: false
      t.integer :year, null: false

      t.timestamps
    end
  end
end
