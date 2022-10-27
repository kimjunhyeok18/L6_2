class TopController < ApplicationController
    def main
        @cart = current_cart
    end
end
