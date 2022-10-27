class ApplicationController < ActionController::Base
    helper_method :current_cart, :delete_cart
    private
    #sessionを確認してカートの生成、インスタンスを返す。
    def current_cart
        if session[:cart_id]
            @cart = Cart.find(session[:cart_id])
        else
            @cart = Cart.new()
            @cart.save
            session[:cart_id] = @cart
        end
    end
    def delete_cart
        session[:cart_id] = nil
    end
end
