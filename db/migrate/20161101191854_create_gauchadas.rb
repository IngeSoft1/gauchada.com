class CreateGauchadas < ActiveRecord::Migration
  def change
    create_table :gauchadas do |t|
      t.integer :Id_Usuario
      t.string :nombre
      t.text :descripcion
      t.string :Ubicacion

      t.timestamps null: false
    end
  end
end
