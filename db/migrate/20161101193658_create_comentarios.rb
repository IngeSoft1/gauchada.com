class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.integer :Id_usuario
      t.integer :Id_gauchada
      t.text :respuesta

      t.timestamps null: false
    end
  end
end
