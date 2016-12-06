class AddNombredeMigrationToEstadistica < ActiveRecord::Migration
  def change
    add_column :estadisticas, :usuario, :integer
    add_column :estadisticas, :fecha, :integer
    add_column :estadisticas, :comentarios, :integer
    add_column :estadisticas, :respuestas, :integer
    add_column :estadisticas, :pagos, :integer
    add_column :estadisticas, :resupuestas, :integer
  end
end
