class CreatePosters < ActiveRecord::Migration[5.1]
  def change
    create_table :posters do |t|
      t.text :name
      t.string :fot
      t.text :descr
      t.date :fech
      t.integer :cost

      t.timestamps
    end
  end
end
