require "van" 

describe Van do
  it { is_expected.to respond_to(:collect).with(1).argument } 
  it {is_expected.to respond_to :delivery}

  describe "#collect" do 
    it "collects broken bikes" do
 	  broken_bikes = double('broken_bikes')
 	  docking_station = double('docking_station', :broken_bikes => [broken_bikes])
      expect(subject.collect(docking_station.broken_bikes)).to eq [broken_bikes]
    end
 end 

  describe "#delivery" do 
  	it "delivers broken bikes to garage" do 
      broken_bikes = double('broken_bikes')
      subject.collect([broken_bikes])
      expect(subject.delivery).to eq [broken_bikes]
    end
 end 

end 