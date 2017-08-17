class CreateAddress < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.references :event_info, foreign_key: true, null: false
      t.string  :street
      t.string  :city
      t.string  :state
      t.string  :zip

      t.timestamps
    end
  end
end
