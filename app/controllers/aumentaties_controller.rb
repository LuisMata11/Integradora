class AumentatiesController < InheritedResources::Base

  layout'virtual'
  private

    def aumentaty_params
      params.require(:aumentaty).permit(:aum)
    end
end

