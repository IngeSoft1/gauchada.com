class AddNewValuesToEstadisticas < ActiveRecord::Migration
  def change
    add_column :estadisticas, :respuestas, :integer
  end
end
