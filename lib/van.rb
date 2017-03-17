require_relative "docking_station"

class Van

    attr_reader :broken_bikes 

	def collect(broken_bikes)
		@broken_bikes = broken_bikes 
	end

	def delivery
		broken_bikes
	end 

end 