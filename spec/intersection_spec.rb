require './lib/passenger'
require './lib/vehicle'
require './lib/intersection'

RSpec.describe Intersection do
  before(:each) do
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @charlie.drive #charlie is the driver
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    @jude = Passenger.new({"name" => "Jude", "age" => 20})
    @vehicle = Vehicle.new("2001", "Honda", "Civic")
    @vehicle.add_passenger(@charlie)
    @vehicle.add_passenger(@jude)
    @vehicle.add_passenger(@taylor)
    @intersection = Intersection.new('Broadway', 'Speer')
  end
  it 'can add a vehicle that passes through intersection' do
    @intersection.pass_through(@vehicle)
    expect(@intersection.vehicles).to eq([@vehicle])
  end

  it 'can add speeding vehicles to a speeding_vehicle array' do
    @vehicle.speed
    @intersection.pass_through(@vehicle)
    @intersection.add_car_and_info_to_correct_spot(@vehicle)
    expect(@intersection.speeding_vehicles).to eq([@vehicle])
  end

  it 'can detect who is the speeding driver in a vehicle' do
    @vehicle.speed
    expect(@intersection.criminal_driver(@vehicle)).to be(@charlie)
  end

  it 'can add the criminal driver to the speeding_drivers array' do
    @vehicle.speed
    @intersection.pass_through(@vehicle)
    @intersection.add_car_and_info_to_correct_spot(@vehicle)
    expect(@intersection.speeding_drivers).to eq([@charlie])
  end 




end
