class LikesController < ApplicationController
    def create
        product = Product.find(params[:product_id])
        unless product.liked?(current_user)
        product.like(current_user)
        end
        redirect_to root_path
    end
    
    def destroy
    product = Product.find(params[:id])
    if product.liked?(current_user)
        product.unlike(current_user)
    end
    redirect_to root_path
    end 
end
