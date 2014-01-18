class AdicionaIndicesEmBairro < ActiveRecord::Migration
	def change
  		add_column :bairros, :uf_id, :integer
  		add_column :bairros, :municipio_id, :integer
	end


end