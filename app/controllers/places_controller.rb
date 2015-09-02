class PlacesController < ApplicationController 
	def index
		number_of_places_per_page = 4
		@places = Place.order(:country).page(params[:page]).per(number_of_places_per_page)
	end

	def new
		@place = Place.new
	end

	def create
		Place.create(place_params)
		redirect_to root_path
	end

	private

	def place_params
		params.require(:place).permit(:name, :description, :address, :country, :state)
	end
end
