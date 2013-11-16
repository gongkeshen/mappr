class PlacesController < ApplicationController
	def index
		# Place.last would give the last row.
		# Place.all would give the tneire database... which may take a while to load
		@place = Place.last
	end

	def new
		# prepopulate
		# @place = Place.last

		# get a new place
		@place = Place.new
	end

	def create
		# Place.create (:title=>'omg',)
		@place = Place.create( place_params )
		redirect_to root_path
	end

	private

	def place_params
		params.require(:place).permit(:title, :address)
	end
end