class UfsController < ApplicationController
	def index
		@ufs = Uf.order(:nome)
	end


	def show
		@uf = Uf.find(params[:id])
	end


	def new
		@uf = Uf.new
	end


	def create
		@uf = Uf.new(uf_params)
		@uf.save
		redirect_to(action: "show", id: @uf)
	end


	def edit
		@uf = Uf.find(params[:id])
	end


	def update
		@uf = Uf.find(params[:id])
		@uf.update_attributes(uf_params)
		redirect_to action: "show", id: @uf
	end


	def destroy
		@uf = Uf.find(params[:id])
		@uf.destroy
		redirect_to(action: "index")
	end


	def uf_params
		params.require(:uf).permit(:nome)
	end


end
