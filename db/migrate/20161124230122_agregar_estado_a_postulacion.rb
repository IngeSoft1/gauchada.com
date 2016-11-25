class AgregarEstadoAPostulacion < ActiveRecord::Migration
  def change
    add_column :postulacions, :estado, :string
  end
end
