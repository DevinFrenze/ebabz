class CreateLocation < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string  :name,    null: false
      t.string  :street,  null: false
      t.string  :city,    null: false
      t.string  :state,   null: false
      t.string  :zip
    end
  end
end
