class ParkingspotsController < ApplicationController

	def index
		@parkingspot = Parkingspot.new
	end

	def create
		render :nothing => true
	end

	def overlap
		parkingspot_start = params[:parkingspot][:start_time]
		parkingspot_end = params[:parkingspot][:end_time]
		@overlap = Parkingspot.where("start_time <= :parking_end AND end_time >= :parking_start", 
			{parking_start: parkingspot_start, parking_end: parkingspot_end}).count
		
		respond_to do |format|
			format.js
		end
	end

end
