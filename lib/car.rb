#Started at 10:20am, 31 August

class Car
  attr_reader :make, :model, :monthly_payment, :loan_length, :color
  def initialize(car_info, monthly_payment, loan_length, color = nil)
    
    @make = car_info.split.first
    @model = car_info.split.last
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @color = color

  end
  def total_cost
    @monthly_payment * @loan_length
  end
  def paint!(color)
    @color = color
  end
end