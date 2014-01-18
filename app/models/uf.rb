class Uf < ActiveRecord::Base
	validates_presence_of :nome, message: " - deve ser preenchido"
	validates_uniqueness_of :nome, message: " - nome já cadastrado"
	has_many :municipios
end
