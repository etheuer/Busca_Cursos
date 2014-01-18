class Municipio < ActiveRecord::Base
	validates_presence_of :nome, message: " - deve ser preenchido"
	has_many :bairros
	belongs_to :uf

	validates_presence_of :uf_id
	validates_associated :uf

end
