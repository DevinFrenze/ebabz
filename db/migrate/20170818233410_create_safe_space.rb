class CreateSafeSpace < ActiveRecord::Migration[5.0]
  def change
    create_table :safe_spaces do |t|
      t.text  :body
    end
  end
end
