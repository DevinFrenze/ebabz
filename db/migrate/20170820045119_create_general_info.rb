class CreateGeneralInfo < ActiveRecord::Migration[5.0]
  def change
    create_table :general_infos do |t|
      t.text  :history, null: false
      t.text  :safe_space_policy, null: false
    end
  end
end
