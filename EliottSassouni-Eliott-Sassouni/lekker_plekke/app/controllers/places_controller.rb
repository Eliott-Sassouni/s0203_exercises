class PlacesController < ApplicationController
	def index
		@places = Place.all.order(rating: :asc)
	end

	def show
		@place = Place.find(params[:id])
	end

	def new
		@place = Place.new
	end

	def create
		@place = Place.new(place_params)

		@place.save
		if @place.save
			redirect_to place_path(@place)
		else
			render :new
		end
	end

	def edit
		@place = Place.new(place_params)
	end

	def update
		@place = Place.find(params[:id])

		if @place.update(place_params)
			redirect_to place_path(@place)
		else
			render :edit
		end
	end

private

	def place_params
		params.require(:place).permit(:name, :rating, :address)
	end
end
