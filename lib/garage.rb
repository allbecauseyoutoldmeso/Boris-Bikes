require_relative "van"
require_relative "bike"

class Garage

  def receive_delivery(broken_bikes)
  	@broken_bikes = broken_bikes
  end

  def fix_bikes
    @broken_bikes.each do |bike|
      bike.mend
    end
    @mended_bikes = @broken_bikes
  end

  def mended_bikes
    @mended_bikes
  end

end
