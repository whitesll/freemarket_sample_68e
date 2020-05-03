class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|

      t.references  :user,            foreign_key: true, null: false
      t.references  :category,        foreign_key: true, null: false
      t.string      :name,            null: false
      t.text        :text,            null: false
      t.string      :brand
      t.integer     :saler_id,        null: false
      t.integer     :buyer_id,        null: false
      t.integer     :status,          null: false
      t.string      :shippingcharges, null: false
      t.string      :shipping_area,   null: false
      t.string      :days_to_ship,    null: false
      t.integer     :price,           null: false

      t.timestamps

    end
  end
end
