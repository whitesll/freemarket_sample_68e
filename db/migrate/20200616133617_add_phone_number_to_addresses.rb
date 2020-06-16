class AddPhoneNumberToAddresses < ActiveRecord::Migration[5.2]
  def change
    change_column :addresses, :phone_number, :bigint
  end
end
