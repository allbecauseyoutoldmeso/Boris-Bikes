require_relative "bike"

class DockingStation

	DEFAULT_CAPACITY = 20

  attr_reader :stored_bikes

  def initialize
    @stored_bikes = []
  end


  def release_bike
  	#guard condition raise - guards the rest of the code in this method, similar to if
    raise "No bikes available" if empty?
    @stored_bikes.pop
  end
  
  # we pass argument bike, 
  def dock(stored_bikes)
    raise "Docking station full" if full?

  	# creates an instance variable that stores the variable bike (instance of bike)
  	@stored_bikes << stored_bikes
  end

  private

  def full?
  	@stored_bikes.length >= DEFAULT_CAPACITY
  end

  def empty?
    @stored_bikes.empty?
  end

end