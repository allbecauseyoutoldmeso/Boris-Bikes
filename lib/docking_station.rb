require_relative "Bike"

class DockingStation

  attr_reader :bike


  def release_bike
  	#guard condition raise - guards the rest of the code in this method, similar to if
    raise "No bikes available" unless @bike 
    @bike
  end
  
  # we pass argument bike, 
  def dock(bike)
  	# creates an instance variable that stores the variable bike (instance of bike)
  	@bike = bike
  end

end