class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :numero
      t.string :email_usuario
      t.integer :usuario_id

      t.timestamps null: false
    end
  end
end
