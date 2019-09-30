class Product < ActiveRecord::Base
  attr_accessible :price, :product_name, :quantity , :category_id
  belongs_to :category
  validates :category_id , presence: true
  validates :price ,presence: true
  validates :product_name,presence: true,uniqueness: true
  validates :quantity,presence: true
end
