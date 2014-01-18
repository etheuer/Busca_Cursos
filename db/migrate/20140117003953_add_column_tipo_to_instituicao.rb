class AddColumnTipoToInstituicao < ActiveRecord::Migration
  def change
  	add_column :instituicoes, :tipo, :string, limit:40
  	add_column :instituicoes, :logadouro, :string, limit:80
  	add_column :instituicoes, :numero, :string, limit:10
  	add_column :instituicoes, :complemento, :string, limit:40
  	add_column :instituicoes, :cep, :string, limit:8
  	add_column :instituicoes, :telefone_ddd, :string, limit:2
  	add_column :instituicoes, :telefone_numero, :string, limit:9
  end
end
