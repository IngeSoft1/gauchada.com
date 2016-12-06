class RemoveInitialValuesFromEstadisticas < ActiveRecord::Migration
  def change
    remove_column :estadisticas, :respuestas, :integer
  end
end
