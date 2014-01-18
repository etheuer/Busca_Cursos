class RenameColumn < ActiveRecord::Migration
  def change
  	rename_column :municipios, :id_uf, :uf_id
  end
end
