class Passenger
  attr_accessor :name, :age
  def initialize(hash)
    @name = hash['name']
    @age = hash['age']
  end

end