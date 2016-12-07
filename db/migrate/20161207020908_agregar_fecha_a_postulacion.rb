class AgregarFechaAPostulacion < ActiveRecord::Migration
  def change
    add_column :postulacions, :fecha, :datetime
  end
end
