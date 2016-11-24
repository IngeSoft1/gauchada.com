class CreatePostulacions < ActiveRecord::Migration
  def change
    create_table :postulacions do |t|
      t.string :descripcion
      t.string :localidad
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
