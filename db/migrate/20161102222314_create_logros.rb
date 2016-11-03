class CreateLogros < ActiveRecord::Migration
  def change
    create_table :logros do |t|
      t.string :nombre
      t.string :puntajeInicial
      t.string :puntajeFinal
      t.timestamps null: false
    end
  end
end
