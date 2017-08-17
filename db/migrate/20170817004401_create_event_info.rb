class CreateEventInfo < ActiveRecord::Migration[5.0]
  def change
    create_table :event_infos do |t|
      t.references
      t.time    :start_time
      t.time    :end_time
      t.date    :date
      t.string  :venue

      t.text    :safe_space_policy
      t.text    :background

      t.timestamps
    end
  end
end
