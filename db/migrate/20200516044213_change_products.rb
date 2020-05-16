class ChangeProducts < ActiveRecord::Migration[5.2]
  def change
    change_column_null :products, :buyer_id, :true
    remove_column :products, :saler_id, :integer
  end
end
