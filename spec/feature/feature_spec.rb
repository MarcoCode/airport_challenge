

describe "Feature Tests - " do
  
 before(:each) do 
    @plane_test = Plane.new
    @stansted = Airport.new "Stansted"
    @heatrow = Airport.new "Heatrow"
  end
  
  
  describe "Airport: " do
    
    xit "can check the weather before allowing landing" do
      @stansted.check_weather
      expect([:sunny, :windy, :rainy, :stormy]).to include(@stansted.weather) 
    end
    
    xit "can check the weather before allowing taking-off" do
      @stansted.check_weather
      expect([:sunny, :windy, :rainy, :stormy]).to include(@stansted.weather)
    end
  end
end


