class RemoveColumnEnderecoToInstituicao < ActiveRecord::Migration
  def change
  	remove_column :instituicoes, :endereco
  	remove_column :instituicoes, :telefone
  end
end
