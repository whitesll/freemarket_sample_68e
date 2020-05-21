class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, :nickname, :full_width_last_name, :full_width_first_name,
            :hira_last_name,:hira_first_name, :birth_date, presence: true

  validates :full_width_last_name, :full_width_first_name,
            :hira_last_name,:hira_first_name, format: {with: /[^a-zA-Z0-9]/ }

  has_many :products
  has_many :comments
  has_one :address
  has_one :creditcard

end
