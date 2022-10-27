class ApplicationController < ActionController::Base
    helper_method :current_cart, :delete_cart
    private
    def current_cart
        if session[:cart]
            cart = Cart.find(session[:cart])
        else
            cart = Cart.create
            session[:cart] = cart.id
        end
        cart
    end
    
    def delete_cart
        reset_session
    end
end
