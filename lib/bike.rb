class Bike

  def initialize
  	@working = true
  end

  def working?
    @working
  end

  def docked?
  	true
  end

def report_broken
   @working = false
end

def mend
  @working = true 
end

end
