require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike} 
end


def initialize(release_bike)
  @release_bike = release_bike	
end

# new instance of Bike Class
Bike.new

#release_bike has to return instance of Bike class
station = Bike.new(release_bike)

