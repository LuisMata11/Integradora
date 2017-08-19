class CreateAumentaties < ActiveRecord::Migration[5.1]
  def change
    create_table :aumentaties do |t|
      t.string :aum

      t.timestamps
    end
  end
end
