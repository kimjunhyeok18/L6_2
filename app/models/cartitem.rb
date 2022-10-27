class Cartitem < ApplicationRecord
    belongs_to :product
    belongs_to :cart
    validates :quantity, presence: true
    def item_name
        Product.find(self.product_id).name
    end
    def _price
        q = self.quantity.to_i
        p = Product.find(self.product_id).price.to_i
        q*p
    end
    def per_price
        Product.find(self.product_id).price.to_i
    end
end
