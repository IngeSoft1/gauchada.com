class AgregarPostulacionAUser < ActiveRecord::Migration
  def change
    add_column :users, :postulacion_id, :integer
  end
end
