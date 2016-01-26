require "weather"


describe Weather do
  
  subject(:weather) { described_class.new }
  
  let(:airport)   { Airport.new(name, capacity)}
  
  let(:name) { "Heatrow" }
  let(:capacity) { 3 }
  
  
  
  
end