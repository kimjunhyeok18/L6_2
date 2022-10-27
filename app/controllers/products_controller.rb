class ProductsController < ApplicationController
    def index
        @products = Product.all
    end
    def new
        @product = Product.new
    end
    def create
        @product = Product.new(name: params[:name], price: params[:price])
        if @product.save
            redirect_to root_path
        else 
            render new_product_path
        end
    end
end