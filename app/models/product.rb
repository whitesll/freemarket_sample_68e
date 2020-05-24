class Product < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  validates :images,           presence: true, length: {maximum: 10}
  validates :name,             presence: true, length: {maximum: 40}
  validates :text,             presence: true, length: {maximum: 1000}
  belongs_to :category
  validates :status,           presence: true
  validates :shippingcharges,  presence: true
  validates :shipping_area,    presence: true
  validates :days_to_ship,     presence: true
  validates :price,            presence: true, numericality: {greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999} 
  
end