require 'garage'

describe Garage do 
  it { is_expected.to respond_to(:receive_delivery).with(1).argument }
  it { is_expected.to respond_to :fix_bikes }

  describe "#receive_delivery" do
    it "receives broken bikes delivery from van" do
      broken_bikes = double("broken_bikes")
      van = double("van", :delivery => [broken_bikes])
      expect(subject.receive_delivery(van)).to eq [broken_bikes]
    end
  end


describe "#fix_bikes" do 
	it 'fixes the bikes' do
	  bike = double("bike", :working? => true) 
    subject.fix_bikes
		expect(bike).to be_working
	end 
end 

end 