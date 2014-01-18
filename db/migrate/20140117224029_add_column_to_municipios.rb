class AddColumnToMunicipios < ActiveRecord::Migration
  def change
  	add_column :municipios, :id_uf, :integer
  end
end
