class CreateMarkers < ActiveRecord::Migration[5.1]
  def change
    create_table :markers do |t|
      t.string :img
      t.text :desc
      t.string :tit

      t.timestamps
    end
  end
end
