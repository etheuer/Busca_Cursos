class AdicionaIndicesEmBairros2 < ActiveRecord::Migration
  def change
  end
	
	add_index(:bairros, :uf_id)
	add_index(:bairros, :municipio_id)

end