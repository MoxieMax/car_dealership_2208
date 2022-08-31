#Started at 10:20am, 31 August

class Car
  attr_reader :make, :model, :monthly_payment, :loan_length
  def initialize(car_info, monthly_payment, loan_length)
    
    @make = car_info.split.first
    @model = car_info.split.last
    @monthly_payment = monthly_payment
    @loan_length = loan_length
  end
  def total_cost
    @monthly_payment * @loan_length
  end
end