class FotosController < InheritedResources::Base

  private

    def foto_params
      params.require(:foto).permit(:lugar, :foto, :descipcion, :capacidad, :grupo)
    end
end

