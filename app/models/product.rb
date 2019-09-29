class Product < ActiveRecord::Base
  attr_accessible :price, :product_name, :quantity
  belongs_to :category
  validates :category_id , presence: true
  validates :price ,presence: true
  validates :product_name,presence: true
  validates :quantity,presence: true
end
