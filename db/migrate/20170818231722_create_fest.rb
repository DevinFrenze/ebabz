class CreateFest < ActiveRecord::Migration[5.0]
  def change
    create_table :fests do |t|
      t.integer :year, null: false

      t.time    :start_time
      t.time    :end_time
      t.date    :date

      t.integer :location_id
      t.integer :application_form_id
      t.integer :volunteer_form_id
    end
  end
end
