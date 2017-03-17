require_relative "bike"
require_relative "van"

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_accessor :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @stored_bikes = []
    @capacity = capacity
  end


  def release_bike
  	#guard condition raise - guards the rest of the code in this method, similar to if
    raise "No bikes available" if empty?
    raise "Bike broken, can't be released" if bike_not_working?
    stored_bikes.pop
  end
  
  # we pass argument bike, 
  def dock(bike)
    raise "Docking station full" if full?

  	# creates an instance variable that stores the variable bike (instance of bike)
  	stored_bikes << bike
  end

  def broken_bikes 
  	stored_bikes.select do |bike|
  		!bike.working?
  	end  
  end 

  private

  attr_reader :stored_bikes

  def full?
  	stored_bikes.length >= capacity
  end  

  def empty?
    stored_bikes.empty?
  end
  
  def bike_not_working?
    !stored_bikes[-1].working?  
  end	


end