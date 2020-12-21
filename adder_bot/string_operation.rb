require 'bigdecimal'

class Calculation
  def self.seperate_target_string(target)
    target.scan(/-?\d+(?:\.\d+(?:E\d+)?)?\s*[+]\s*-?\d+(?:\.\d+(?:E\d+)?)?/).first
  end

  def self.separate_numbers(given_input)
    given_input.split('+', 2)
  end

  def self.to_numeric(anything)
    num = BigDecimal(anything.to_s)
    if num.frac == 0
      num.to_i
    else
      num.to_f
    end
  end

  def self.generate_result(num1, num2)
    to_numeric(num1) + to_numeric(num2)
  end
end