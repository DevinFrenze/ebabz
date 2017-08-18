class CreateEventVendor < ActiveRecord::Migration[5.0]
  def change
    create_table :event_vendors do |t|
      t.integer :event_id, null: false
      t.integer :vendor_id, null: false
    end
  end
end
