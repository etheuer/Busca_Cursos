class AddIndexToMunicipio < ActiveRecord::Migration
  def change
  	add_index(:municipios, :uf_id)
  end

end
