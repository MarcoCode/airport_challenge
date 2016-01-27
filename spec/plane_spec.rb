require "plane"
require "truck"

describe Plane do
  
  subject(:plane)  { Plane.new }
  
  before(:each) do
    @airport = Airport.new "Stansted"
  end
  
  it "creates a new instance of the class" do
    expect(plane).to be_a Plane
  end
  
  it { is_expected.to respond_to(:plane_id)}
  
  it "has a unique plane_id" do
    expect(plane.plane_id).to eq "737-11"
  end
  
  it "can be docked at an airport" do 
    expect(plane.dock(@airport)).to eq [plane]
  end
  
  
end