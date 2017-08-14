class AddTipoEventoToEvent < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :tipo_evento, :string
  end
end
