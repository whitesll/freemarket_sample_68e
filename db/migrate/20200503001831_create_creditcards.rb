class CreateCreditcards < ActiveRecord::Migration[5.2]
  def change
    change_column_null :users, :buyer_id, true
    remove_column :users, :user_id, :string
    end
  end
end
