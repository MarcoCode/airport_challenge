require "weather"


describe Weather do
  
  subject(:weather) { described_class.new }
  
  let(:airport)   { Airport.new(name, capacity)}
  
  let(:name) { "Heatrow" }
  let(:capacity) { 3 }
  
  it 'has a condition' do 
    expect([:sunny, :stormy]).to include weather.condition?
  end
  
  
end