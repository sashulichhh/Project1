class SettlementsController < ApplicationController
	def index 
		@settlements = Settlement.all
	end 

	def show
		@settlement = Settlement.find_by_id(params[:id])
	end

	def new
		@settlement = Settlement.new
	end

	def create
		@settlement = Settlement.create(name: params[:name], category: params[:category])
		redirect_to '/settlements'
	end

	def edit
		@settlement = Settlement.find_by_id(params[:id])
	end

	def update
		@settlement = Settlement.find_by_id(params[:id])
		@settlement.update(name: params[:name],
						 category: params[:category])
		redirect_to settlement_path(@settlement)
	end

	def destroy
		@settlement = Settlement.find_by_id(params[:id])
		@settlement.destroy
		redirect_to '/settlements'
	end
end
