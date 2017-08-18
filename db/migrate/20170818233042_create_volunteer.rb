class CreateVolunteer < ActiveRecord::Migration[5.0]
  def change
    create_table :volunteers do |t|
      t.date    :start_date, null: false
      t.date    :end_date, null: false
      t.text    :form
      t.integer :event_id
    end
  end
end
