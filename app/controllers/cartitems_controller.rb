class CartitemsController < ApplicationController
    def new
        @cartitem = Cartitem.new
        @products = Product.all
    end
    def create 
        cartitem = Cartitem.new(product_id: params[:product_id], cart_id: current_cart.id, quantity: params[:quantity])
        if cartitem.save
            flash[:added] = "added"
            redirect_to new_cartitem_path
        else
            flash[:error] = "error"
            redirect_to new_cartitem_path
        end
     
    end
    def shows
        @cartitems = Cartitem.where(cart_id: current_cart.id)
    end
    def destroy
        cartitem = Cartitem.find(params[:id])
        if cartitem.destroy
            redirect_to cartitems_shows_path
        end
    end
end
