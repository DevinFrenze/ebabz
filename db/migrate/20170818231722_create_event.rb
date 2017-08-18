class CreateEvent < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.integer :year, null: false
      t.boolean :active, null: false, default: false

      t.time    :start_time
      t.time    :end_time
      t.date    :date
      t.string  :venue
    end
  end
end
