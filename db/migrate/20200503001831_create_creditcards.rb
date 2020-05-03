class CreateCreditcards < ActiveRecord::Migration[5.2]
  def change
    create_table :creditcards do |t|
      t.string :customer_id
      t.string :card_id
      t.references :user, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
