class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      
      t.references  :user,                       foreign_key: true, null: false

      t.string  :address_full_width_last_name,   null: false, default: ""
      t.string  :address_full_width_first_name,  null: false, default: ""
      t.string  :address_hira_last_name,         null: false, default: ""
      t.string  :address_hira_first_name,        null: false, default: ""

      t.integer :phone_number,                   default: ""
      t.integer :zip_code,                       null: false, default: ""
      t.string  :prefectures,                    null: false, default: ""
      t.string  :city,                           null: false, default: ""
      t.string  :address,                        null: false, default: ""
      t.string  :room_number,                    default: ""

      t.timestamps
    end
  end
end
