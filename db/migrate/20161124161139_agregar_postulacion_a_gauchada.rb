class AgregarPostulacionAGauchada < ActiveRecord::Migration
  def change
      add_column :gauchadas, :postulacion_id, :integer
  end
end
