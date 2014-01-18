class Bairro < ActiveRecord::Base
	validates_presence_of :nome, message: " - deve ser preenchido"
	validates_presence_of :municipio_id, message: " - deve ser preenchido"	
	validates_presence_of :uf_id, message: " - deve ser preenchido"
	

	belongs_to :municipio
	has_many :instituicoes

	validates_presence_of :municipio_id
	validates_associated :municipio
	validates_presence_of :uf_id
	validates_associated :uf_id

end