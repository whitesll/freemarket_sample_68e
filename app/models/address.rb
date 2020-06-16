class Address < ApplicationRecord
  belongs_to :user, optional: true

  validates :address_full_width_last_name, :address_full_width_first_name, :address_hira_last_name,
            :address_hira_first_name, :phone_number, :zip_code, :prefectures, :city, :address, presence: true
  validates :phone_number, format: { with: /[0-9]/ }, length: {minimum:10, maximum:11}
  
end
