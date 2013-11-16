class PlacesController < ApplicationController
	def index
		# Place.last would give the last row.
		# Place.all would give the tneire database... which may take a while to load
		@place = Place.last
	end
end
