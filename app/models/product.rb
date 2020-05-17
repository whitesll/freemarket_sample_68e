class Product < ApplicationRecord
  belongs_to :user, class_name: "User"
  belongs_to :category
  belongs_to :buyer, class_name: "User", optional: true
  has_many :comments
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture, primary_key: "shipping_area"
end
