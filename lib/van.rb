require_relative "docking_station"

class Van

	def collect(broken_bikes)
		@broken_bikes = broken_bikes
	end

	def delivery
		@broken_bikes
	end

end
