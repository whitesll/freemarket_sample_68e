class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.text     :title,   null: false
      t.text     :text,    null: false
      t.integer  :user_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end
