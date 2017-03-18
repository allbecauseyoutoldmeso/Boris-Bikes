require_relative "van"
require_relative "bike"

class Garage

  attr_reader :mended_bikes

  def receive_delivery(broken_bikes)
  	@broken_bikes = broken_bikes
  end

  def fix_bikes
    @broken_bikes.each do |bike|
      bike.mend
    end
    @mended_bikes = @broken_bikes
  end

end
