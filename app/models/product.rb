class Product < ApplicationRecord
  belongs_to :cart
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :price
  validates :price, comparison: { greater_than: 0.99 }
  validates_uniqueness_of :name, scope: :cart_id
end
