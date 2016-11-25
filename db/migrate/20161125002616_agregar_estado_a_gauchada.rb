class AgregarEstadoAGauchada < ActiveRecord::Migration
  def change
    add_column :gauchadas, :estado, :string
  end
end
