class MarkersController < InheritedResources::Base

  private

    def marker_params
      params.require(:marker).permit(:img, :desc, :tit)
    end
end

