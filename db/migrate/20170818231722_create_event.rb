class CreateEvent < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.integer :year, null: false

      t.time    :start_time
      t.time    :end_time
      t.date    :date
      t.string  :venue

      t.integer :address_id
      t.integer :application_form_id
      t.integer :volunteer_form_id
    end
  end
end
