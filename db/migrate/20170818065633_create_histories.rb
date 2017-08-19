class CreateHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :histories do |t|
      t.string :name
      t.string :img
      t.text :desc

      t.timestamps
    end
  end
end
