class Intersection
  attr_accessor :cs1, :cs2, :passengers, :vehicles, :speeding_vehicles, :speeding_drivers
  def initialize(cs1, cs2)
    #cs = Cross Street
    @cs1 = cs1
    @cs2 = cs2
    @passengers = []
    @vehicles = []
    @speeding_vehicles =[]
    @speeding_drivers = []
  end

  def pass_through(vehicle)
    @vehicles << vehicle
  end

  def passed_through?(vehicle)
    @vehicles.include?(vehicle)
  end


  def add_car_and_info_to_correct_spot(vehicle)
    @speeding_vehicles.push vehicle if vehicle.speeding? && passed_through?(vehicle)
    @speeding_drivers.push criminal_driver(vehicle) if vehicle.speeding? && passed_through?(vehicle)  #driver is attribute of passenger
  end

  def criminal_driver(vehicle)
    if vehicle.speeding?
      driver = vehicle.passengers.find {|passenger| passenger.driver?}
    end
    return driver
  end






end


'Iteration 3

You have been contracted by the Colorado Department of Transportation to build
a software system that can track cars passing through intersections. Specifically,
they would like you to implement the following features:

1. Each intersection has two cross streets, as well as a way to read that data.
2. An intersection can list all vehicles that passed through it.
3. An intersection can list all vehicles that were speeding through it.
4. An intersection can list all drivers that were speeding through it.

Build upon your existing code from the pre-work to implement this functionality.'
