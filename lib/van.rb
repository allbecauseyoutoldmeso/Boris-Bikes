require_relative "docking_station"

class Van

    attr_reader :bikes 

	def collect(bikes)
		@bikes = bikes 
	end

end 