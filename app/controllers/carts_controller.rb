class CartsController < InheritedResources::Base

 rescue_from ActiveRecord::RecordNotFound, with: :invalid_cart

def destroy
    respond_to do |format|
      format.html { redirect_to photos_path,
        notice: 'Your cart is currently empty' }
      format.json { head :no_content }
    end
  end


  private

    def cart_params
      params.require(:cart).permit()
    end
    
 def invalid_cart
      logger.error "Attempt to access invalid cart #{params[:id]}"
      redirect_to store_index_url, notice: 'Invalid cart'
    end

end


