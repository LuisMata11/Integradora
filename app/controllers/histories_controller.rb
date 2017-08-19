class HistoriesController < InheritedResources::Base

  private

    def history_params
      params.require(:history).permit(:name, :img, :desc)
    end
end

