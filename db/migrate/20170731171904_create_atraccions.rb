class CreateAtraccions < ActiveRecord::Migration[5.1]
  def change
    create_table :atraccions do |t|
      t.string :lugar
      t.string :nombre

      t.timestamps
    end
  end
end
