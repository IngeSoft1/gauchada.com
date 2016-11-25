class AgregarPuntosAUsuario < ActiveRecord::Migration
  def change
    add_column :users, :puntos, :integer
  end
end
