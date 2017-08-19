class StoreController < ApplicationController
	
	include CurrentCart
  before_action :set_cart

	def index
    @photos = Photo.order(:name)
  end
end
