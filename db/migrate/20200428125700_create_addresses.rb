class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|

      t.string  :address_full_width_last_name,   null: false, default: ""
      t.string  :address_full_width_first_name,  null: false, default: ""
      t.string  :address_hira_last_name,         null: false, default: ""
      t.string  :address_hira_first_name,        null: false, default: ""

      t.integer :phone_number,                   null: false
      t.integer :zip_code,                       default: ""
      t.string  :prefectures,                    default: ""
      t.string  :city,                           default: ""
      t.string  :address,                        default: ""
      t.string  :room_number,                    default: ""

      t.timestamps
    end
  end
end
