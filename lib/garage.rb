require_relative "van" 

class Garage

  def receive_delivery(van)
  	@broken_bikes = van.delivery 
  end 
  
  def fix_bikes
  end

end 