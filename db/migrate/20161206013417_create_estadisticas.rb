class CreateEstadisticas < ActiveRecord::Migration
  def change
    create_table :estadisticas do |t|
      t.string :texto
      t.integer :cant1
      t.integer :cant2

      t.timestamps null: false
    end
  end
end
