class PlacesController < ApplicationController 
	def index
		number_of_places_per_page = 4
		@places = Place.order(:country).page(params[:page]).per(number_of_places_per_page)
	end

	def new
		@place = Place.new
	end
end
