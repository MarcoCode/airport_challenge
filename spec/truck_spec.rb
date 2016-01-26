require 'truck'


describe Truck do 
  
  subject(:truck) { Truck.new }
  let(:plane)     { Plane.new }
  let(:airport)   { Airport.new(name) }
     let(:name)   { "London"}

  it "docks a new plane into the airport" do
    expect(truck.dock(plane, airport))
  end



end