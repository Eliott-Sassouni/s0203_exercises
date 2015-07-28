class AnimalsController < ApplicationController
	def index
		@animals = Animal.all.order(name: :desc)
	end

	def show
		@animal = Animal.find(params[:id])
	end

	def new
		@animal = Animal.new
	end

	def create
		@animal = Animal.new(animal_params)

		@animal.save
		if @animal.save
			redirect_to animal_path(@animal)
		else
			render :new
		end
	end

	def edit
		@animal = Animal.find(params[:id])
	end

	def update
		@animal = Animal.find(params[:id])

		if @animal.update(animal_params)
			redirect_to animal_path(@animal)
		else
			render :edit
		end
	end

private

	def animal_params
		params.require(:animal).permit(:name, :species, :region, :diet, :color, :age, :size)
	end
end