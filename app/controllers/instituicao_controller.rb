class InstituicaoController < ApplicationController
e	def index
		@instituicoes = Instituicao.order(:nome)
	end

	def show
		@instituicao = Instituicao.find(params[:id])
	end

end
