require "airport"
require "truck"


describe Airport do
  
  subject(:airport) { described_class.new(name, capacity) }
  
    let(:name) { "Stansted" }  
    let(:capacity) { 3 }
    
    let(:plane)     { Plane.new }
    
  it { is_expected.to respond_to(:land).with(1).argument }
  it { is_expected.to respond_to(:take_off).with(1).argument }
  
  before(:each) do
    plane.dock(airport)
  end

  it "has a default capacity" do
    expect(airport.capacity).to eq 3
  end
  
  context "Can be created with a different capacity" do
  
  let(:capacity) { 5 }
  
  it "has variable capacity" do
    expect(airport.capacity).to eq 5
  end
  
end

  describe "#take_off" do
    
    it "Let a plane take off in clear weather" do
      expect(airport.take_off(plane)).to eq "737-1 took-off from Stansted"     
    end
    
    it "Does not let a plane take off in stormy weather" do
    allow(airport).to receive(:clear?).and_return(false)
    expect(airport.take_off(plane)).to eq "Cannot operate in Stansted, stormy weather"
    end
    
    it "Does not let a plane not in the airport take-off" do
      airport.planes.delete(plane)
      expect(airport.take_off(plane)).to eq "737-7 is not in Stansted"
    end
    
  end
  
  describe "#land" do
  
    it "Let a plane land in clear weather" do
      airport.take_off(plane)
      expect(airport.land(plane)).to eq "737-1 landed in Stansted"     
    end
  
  end
 
end