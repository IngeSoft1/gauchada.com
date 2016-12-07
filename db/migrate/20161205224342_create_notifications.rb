class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.string :texto
      t.integer :usuario_id
      t.integer :gauchada_id
      t.integer :comentario_id
      t.integer :respuesta_id

      t.timestamps null: false
    end
  end
end
