class AtraccionsController < InheritedResources::Base

  private

    def atraccion_params
      params.require(:atraccion).permit(:lugar, :nombre)
    end
end

