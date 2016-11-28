class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :res
      t.integer :comentario_id
      t.integer :usuario_id

      t.timestamps null: false
    end
  end
end
