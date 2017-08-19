class CreateAddress < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string  :street, null: false
      t.string  :city, null: false
      t.string  :state, null: false
      t.string  :zip
    end
  end
end
