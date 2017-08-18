class CreateHistory < ActiveRecord::Migration[5.0]
  def change
    create_table :histories do |t|
      t.text  :body
    end
  end
end
