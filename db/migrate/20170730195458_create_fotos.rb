class CreateFotos < ActiveRecord::Migration[5.1]
  def change
    create_table :fotos do |t|
      t.string :lugar
      t.string :foto
      t.string :descipcion
      t.string :capacidad
      t.string :grupo

      t.timestamps
    end
  end
end
