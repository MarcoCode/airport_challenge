

Airport Challenge         [![Build Status](https://travis-ci.org/MarcoCode/airport_challenge.svg?branch=master)](https://travis-ci.org/MarcoCode/airport_challenge)  
=================

What is it?
---------

* A refactored solution to the airport_challenge

Rationale
-------

* The ControlTower class has been removed and its responsibility delegated to Airport

* Weather class has been added

* The Truck class has been added
  - Its responsibility is to dock planes at an airport (before they can take_off)
* The Airport class let planes land and take-off
  
* The Plane class keeps track of the flying state
  - It communicates its plane_id to the airport
  - Each instance has to be docked when created in order to take-off from an airport


Example
-------


irb(main):003:0> airport = Airport.new "London"

=> \#\<Airport:0x007f9d9c04e110 @name="London", @capacity=3, @weather=#<Weather:0x007f9d9c04dfd0 @condition=:stormy>, @planes=[]\>

irb(main):004:0> plane = Plane.new

=> \#\<Plane:0x007f9d9c03c668 @plane_id="737-1", @flying=false\>

irb(main):005:0> airport.take_off(plane)

=> "737-1 is not in London"

irb(main):006:0> plane.dock(airport)

=> [\#\<Plane:0x007f9d9c03c668 @plane_id="737-1", @flying=false\>]

irb(main):007:0> airport.take_off(plane)

=> "737-1 took-off from London"

irb(main):012:0> airport.land(plane)

=> "737-1 landed in London"

