require 'rspec'
require './lib/car'
require './lib/dealership'
require 'pry'

RSpec.describe Dealership do
  it 'exists' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership).to be_a Dealership
  end
  
  it 'has a name' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    
    expect(dealership.name).to eq("Acme Auto")
  end
  
  it 'has an address' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    
    expect(dealership.address).to eq("123 Main Street")
  end
  
  it 'has an inventory' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    
    expect(dealership.inventory).to eq([])
    expect(dealership.inventory.count).to eq(0)
  end
  
  it 'starts with no cars in inventory' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    
    expect(dealership.inventory.count).to eq(0)
  end
  
  it 'can add cars to inventory' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    
    expect(dealership.inventory).to eq([car_1, car_2])
    expect(dealership.inventory.count).to eq(2)
  end
end