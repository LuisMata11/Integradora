class PhotosController < ApplicationController
 before_action :set_photo, only: [:show, :edit, :update, :destroy]

def index
    @photos = Photo.all
  end

    def create
 @photo = Photo.new(photo_params)
 
    respond_to do |format|
      if @photo.save
        format.html { redirect_to @photo,
          notice: 'Su foto fue creada exitosamente.' }
        format.json { render :show, status: :created,
          location: @photo }
      else
        format.html { render :new }
        format.json { render json: @photo.errors,
          status: :unprocessable_entity }
      end
    end
  end

 def update
    respond_to do |format|
      if @photo.update(photo_params)
        format.html { redirect_to @photo,
          notice: 'Su foto fue actualizada exitosamente.' }
        format.json { render :show, status: :ok, location: @photo }
 
        @photos = Photo.all
        ActionCable.server.broadcast 'photos',
          html: render_to_string('store/index', layout: false)
      else
        format.html { render :edit }
        format.json { render json: @photo.errors,
          status: :unprocessable_entity }
      end
    end
  end

def destroy
    @photo.destroy
    respond_to do |format|
      format.html { redirect_to photos_url,
          notice: 'Su foto fue eliminada exitosamente.' }
      format.json { head :no_content }
    end
  end
 
 private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo
      @photo = Photo.find(params[:id])
    end

  private

    def photo_params
      params.require(:photo).permit(:name, :description, :image, :price)
    end


end

