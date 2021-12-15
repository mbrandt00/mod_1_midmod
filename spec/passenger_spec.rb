require './lib/passenger'

RSpec.describe do
  before(:each) do
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
  end

  it 'will recognize names' do
    expect(@charlie.name).to eq('Charlie')
    expect(@taylor.name).to eq('Taylor')
  end

  it 'will recognize ages' do
    expect(@charlie.age).to eq(18)
    expect(@taylor.age).to eq(12)
  end

  it 'will recognize if passenger is an adult' do
    expect(@charlie.adult?).to be true
    expect(@taylor.adult?).to be false
  end 
end
