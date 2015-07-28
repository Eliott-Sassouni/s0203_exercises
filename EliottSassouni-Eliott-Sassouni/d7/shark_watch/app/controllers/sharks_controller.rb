class SharksController < ApplicationController
	def index
		@sharks = Shark.all
	end

	def show
		@shark = Shark.find(params[:id])
	end
end
