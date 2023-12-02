class Cart < ApplicationRecord
    has_many :products, dependent: :destroy
    validates_presence_of :name
    validates_uniqueness_of :name
    validates_numericality_of :totalPurchases, greater_than: -1
    validates :bought, inclusion: [true, false]

    accepts_nested_attributes_for :products, reject_if: lambda { |a| a[:price].blank? }, allow_destroy: true
end
