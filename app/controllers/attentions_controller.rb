class AttentionsController < InheritedResources::Base

  private

    def attention_params
      params.require(:attention).permit(:horaI, :horaF, :dic, :nom, :tel, :cont)
    end
end

