class Passenger
  attr_accessor :name, :age, :driver
  def initialize(hash)
    @name = hash['name']
    @age = hash['age']
    @driver = false
  end

  def adult?
    @age >=18
  end

  def drive
    @driver = true
  end

  def driver?
    @driver
  end 

end
