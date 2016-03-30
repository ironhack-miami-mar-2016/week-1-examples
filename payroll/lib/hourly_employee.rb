class HourlyEmployee
  include PayableByHour

  def initialize(hours, wage)
    @hours = hours
    @wage = wage
  end

  def calculate_salary
    hourly_pay
  end
end
