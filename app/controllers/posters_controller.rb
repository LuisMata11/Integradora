class PostersController < InheritedResources::Base

  private

    def poster_params
      params.require(:poster).permit(:name, :fot, :descr, :fech, :cost)
    end
end

