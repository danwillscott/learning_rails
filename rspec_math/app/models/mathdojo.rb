class MathDojo
  attr_accessor :result
  def initialize
    @result = 0
  end
  def add(*numbers)
    @result += numbers.flatten.inject(:+)
    self
  end
  def subtract(*numbers)
    @result -= numbers.flatten.inject(:+)
    self
  end

  def multiply_by_the_sum(*numbers)
    @result * numbers.flatten.inject(:+)
    self
  end

  def reset
    @result = 1
    self
  end
end


# Add a new method called multiply_by_the_sum.
# MathDojo.new.add(5).multiply_by_the_sum([3,5,7], 3) # should do 5*(3+5+7+3).
# MathDojo.new.add(5).multiply_by_the_sum([3,5,7],3).multiply_by_the_sum(2,8) # should do (5)*(3+5+7+3)*(2+8).