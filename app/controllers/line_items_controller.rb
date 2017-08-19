class LineItemsController < ApplicationController

include CurrentCart
  before_action :set_cart, only: [:create]
  before_action :set_line_item, only: [:show, :edit, :update, :destroy]
  
 def index
    @line_items = LineItem.all
  end

  def new
    @line_item = LineItem.new
  end


def create
    photo = Photo.find(params[:photo_id])
    #@line_item = @cart.line_items.build(photo: photo)
   @line_item = @cart.add_photo(photo)
 
    respond_to do |format|
      if @line_item.save
        format.html { redirect_to @line_item.cart,
          notice: 'Su lista fue creada exitosamente.' }
        #format.js   { @current_item = @line_item }
        format.json { render :show,
          status: :created, location: @line_item }
      else
        format.html { render :new }
        format.json { render json: @line_item.errors,
          status: :unprocessable_entity }
      end
    end
  end

  def line_item_params
      params.require(:line_item).permit(:photo_id)
    end


  private

  def set_line_item
      @line_item = LineItem.find(params[:id])
    end

    

end


