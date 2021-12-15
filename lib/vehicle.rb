class Vehicle
  attr_reader :year, :make, :model
  attr_accessor :passengers

  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @speeding = false
    @passengers = []
  end

  def speeding?
    @speeding
  end

  def speed
    @speeding = true
  end

  def add_passenger(passenger)
    @passengers << passenger
  end

  def num_adults
    adults_in_vehicle = @passengers.select {|passenger| passenger.adult?}
    return adults_in_vehicle.count
  end 
end
