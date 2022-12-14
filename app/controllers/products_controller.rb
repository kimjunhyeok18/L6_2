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
            flash.now[:success] = "succeeded"
            render new_product_path
        else 
            flash.now[:error] = "error"
            render new_product_path
        end
    end
    def destroy
        product = Product.find(params[:id])
        product.destroy
        redirect_to products_path
    end
end
