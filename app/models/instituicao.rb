class Instituicao < ActiveRecord::Base
	validates_presence_of :nome, message: " - deve ser preenchido"
	validates_uniqueness_of :nome, message: " - nome já cadastrado"
# Preciso validar se os atributos abaixo contem somente número, mas não deu certo provavelmente pq estou tentando verificar numericalidade de uma string
#	validates_numericality of :cep, message: " - deve conter somente numeros"
#	validates_numericality of :telefone_ddd, message: " - deve conter somente numeros"	 
#	validates_numericality of :telefone_numero, message: " - deve conter somente numeros"
	has_and_belongs_to_many :cursos
	belongs_to :bairro
	
	validates_presence_of :bairro_id
	validates_associated :bairro
	
	validate :validate_presence_of_more_than_one_curso

	private
	def validate_presence_of_more_than_one_curso
		errors.add("cursos", "deve haver ao menos um curso") if cursos.empty?
	end


end
