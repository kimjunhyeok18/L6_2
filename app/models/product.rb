class Product < ApplicationRecord
    has_one :cartitem
    validates :name, presence: true
    validates :price, presence: true
end
