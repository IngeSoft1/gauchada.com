class AddNewValuesToCards < ActiveRecord::Migration
  def change
    add_column :cards, :nombre, :string
    add_column :cards, :apellido, :string
    add_column :cards, :cv, :integer
  end
end
