class Weather
  
  
  def initialize
    @condition = condition
    
  end
  
  def weather
    Weather.new
  end
  
  def condition?
    @condition
  end

  private
  
  def condition
    rand(20) > 12 ? :stormy : :sunny
  end

end

