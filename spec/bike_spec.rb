require 'bike'

describe Bike do
  it { is_expected.to respond_to :working?}
  it { is_expected.to respond_to :docked?}
  it { is_expected.to respond_to :report_broken}

  describe "#report_broken" do
  	it "reports bike as broken" do
      subject.report_broken
      expect(subject).not_to be_working
    end
  end

  describe '#mend' do
    it 'mends the bike' do
      subject.mend
      expect(subject).to be_working
    end
  end

end
