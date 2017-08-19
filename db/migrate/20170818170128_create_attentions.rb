class CreateAttentions < ActiveRecord::Migration[5.1]
  def change
    create_table :attentions do |t|
      t.time :horaI
      t.time :horaF
      t.text :dic
      t.string :nom
      t.string :tel
      t.text :cont

      t.timestamps
    end
  end
end
