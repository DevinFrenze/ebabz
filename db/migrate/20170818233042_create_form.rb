class CreateForm < ActiveRecord::Migration[5.0]
  def change
    create_table :forms do |t|
      t.date    :start_date, null: false
      t.date    :end_date, null: false
      t.text    :form, null: false
      t.text    :info
    end
  end
end
