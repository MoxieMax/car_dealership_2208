class Dealership
  attr_reader :name, :address, :inventory
  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
  end
  
  def add_car(car)
    @inventory << car
  end
  
  def has_inventory?
    
    if @inventory.count >= 1
      return true
    else false
    end
    
  end
  
  def cars_by_make(make)
    @inventory.select {|a| a.make == make}
  end
  
  def total_value
    sum_cars = 0
    @inventory.each do |car|
      sum_cars += car.total_cost
    end
    
    return sum_cars
    
  end
  
  def details
    hash = {
      total_value: self.total_value,
      address: self.address
    }
    return hash
  end
  
end