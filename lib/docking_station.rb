require_relative "bike"

class DockingStation

  attr_reader :stored_bikes

  def initialize
    @stored_bikes = []
  end


  def release_bike
  	#guard condition raise - guards the rest of the code in this method, similar to if
    raise "No bikes available" if @stored_bikes.empty?
    @stored_bikes.pop
  end
  
  # we pass argument bike, 
  def dock(stored_bikes)
    raise "Docking station full" if @stored_bikes.length >= 20

  	# creates an instance variable that stores the variable bike (instance of bike)
  	@stored_bikes << stored_bikes
  end

end
