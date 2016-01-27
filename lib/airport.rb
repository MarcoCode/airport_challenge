require 'weather'

class Airport
  
  attr_reader :name, :planes, :capacity, :weather
  
  DEFAULT_CAPACITY = 3
  
  def initialize(name, capacity=DEFAULT_CAPACITY)
    @name = name
    @capacity = capacity
    @weather = Weather.new
    @planes = []
  end
  
  def land(plane)
    return "Cannot land in #{self.name}, the airport is full" if full?
    return "#{plane.plane_id} is not flying" unless plane.flying 
    return "Cannot operate in #{self.name}, stormy weather" unless clear?
    plane.flying = false
    self.planes << plane
     "737-1 landed in #{self.name}"   
  end
  
  def take_off(plane) 
    return "#{plane.plane_id} is not in #{self.name}" unless docked?(plane)
    return "Cannot operate in #{self.name}, stormy weather" unless clear?
    plane.flying = true
    self.planes.delete(plane)
    "737-1 took-off from #{self.name}"
  end
  
  
  private
  
  def docked?(plane)
    @planes.include?(plane)
  end
  
   def full?
     @planes.size == capacity
   end

   def clear?
     @weather != :stormy 
   end
  
  
end