require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike}
  it { is_expected.to respond_to(:dock).with(1).argument} 
  #it { is_expected.to respond_to(:stored_bikes) }

  describe "#release_bike" do
    it "releases a bike" do 
      # bike = Bike.new # bike class not being tested
      bike = double(:working? => true)
      subject.dock(bike)
      expect(subject.release_bike).to eq bike  
    end

    it "releases working bikes" do
      # bike = Bike.new # bike class not being tested
      bike = double('bike', :working? => true)
      subject.dock(bike)
      subject.release_bike
      expect(bike).to be_working
    end

    it "raises an error when no bikes available" do 
      expect{ subject.release_bike }.to raise_error "No bikes available"  
    end
    
    it "does not release a broken bike" do 
      # bike = Bike.new # bike class not being tested
      bike = double('bike', :working? => false)
      # bike.report_broken
      subject.dock(bike)
      expect { subject.release_bike }.to raise_error "Bike broken, can't be released"      
    end
     

  end 
  
  describe '#dock' do
    it "docks bike" do
      #bike = Bike.new # class not being tested
      bike = double("bike")
      expect(subject.dock(bike)).to eq [bike]
    end

    it "raises an error when docking station is at full capacity" do
      docking_station = DockingStation.new(50)
      bike = double("bike")
      50.times { docking_station.dock(bike) } # bike class not being tested
      expect { docking_station.dock(bike) }.to raise_error "Docking station full"  # bike class not being tested
    end

    it "raises an error using default capacity" do
      bike = double("bike")
      subject.capacity.times { subject.dock(bike) } # bike class not being tested
      expect { subject.dock(bike) }.to raise_error "Docking station full"  # bike class not being tested
    end
  end

  describe '#capacity' do
    it "specifies larger capacity when necessary" do 
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end  
  end



end

