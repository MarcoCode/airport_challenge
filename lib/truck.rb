class Truck
 
  def dock(plane, airport)
    return "#{airport.name} is full" if airport.capacity == airport.planes
    return "#{plane.plane_id} is flying" if plane.flying == true
    airport.planes << plane
  end
  

end