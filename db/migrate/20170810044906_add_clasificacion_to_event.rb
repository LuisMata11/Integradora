class AddClasificacionToEvent < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :clasificacion, :string
  end
end
