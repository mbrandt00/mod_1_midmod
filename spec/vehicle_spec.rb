require './lib/passenger'
require './lib/vehicle'

RSpec.describe Vehicle do
  before(:each) do
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    @jude = Passenger.new({"name" => "Jude", "age" => 20})
    @vehicle = Vehicle.new("2001", "Honda", "Civic")
  end

  it 'will read vehicle attributes' do
    expect(@vehicle.year).to eq('2001')
    expect(@vehicle.make).to eq('Honda')
    expect(@vehicle.model).to eq('Civic')
  end

  describe 'speeding' do
    it 'is not speeding by default' do
      expect(@vehicle.speeding?).to be false
    end
    it 'can speed' do
      @vehicle.speed
      expect(@vehicle.speeding?).to be true
    end
  end 


end
