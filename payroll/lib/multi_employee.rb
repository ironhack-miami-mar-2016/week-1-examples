class MultiEmployee
  include PayableByHour

  def initialize(hours, wage, salary)
    @worked_hours = hours
    @wage = wage
    @salary = salary
  end

  def calculate_salary
    if @worked_hours > 40
      @hours = @worked_hours - 40
    else
      @hours = 0
    end

    (@salary / 52.0) + hourly_pay
  end
end
