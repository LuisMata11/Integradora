class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :titulo
      t.date :inicio
      t.date :fin
      t.string :clasificacion
      t.string :tipo_evento

      t.timestamps
    end
  end
end
