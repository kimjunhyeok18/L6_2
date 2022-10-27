class TopController < ApplicationController
    def main
    end
    def re
        delete_cart
        redirect_to root_path
    end
end
