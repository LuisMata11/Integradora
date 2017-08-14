class EventsController < InheritedResources::Base

  private

    def event_params
      params.require(:event).permit(:titulo, :inicio, :fin, :clasificacion, :tipo_evento)
    end
end

