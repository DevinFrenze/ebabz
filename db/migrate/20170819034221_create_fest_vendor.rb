class CreateFestVendor < ActiveRecord::Migration[5.0]
  def change
    create_table :fest_vendors do |t|
      t.integer :fest_id, null: false
      t.integer :vendor_id, null: false
    end
  end
end
