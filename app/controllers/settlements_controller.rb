class SettlementsController < ApplicationController
	def index
		@settlements = Settlement.all
	end

	def show
		@settlement = Settlement.find_by_id(params[:id])
	end

	def new
	end

	def edit
	end

	def destroy
	end
end