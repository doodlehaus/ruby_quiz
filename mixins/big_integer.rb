module Stringify
  def stringify
    if @value == 1
      "One"
    elsif @value == 2
      "Two"
    elsif @value == 3
      "Three"
    end
  end
end

module Math
  def add(val_one, val_two)
    BigInteger.new(val_one + val_two)
  end
end

class Number
  def intValue
    @value
  end
end

class BigInteger < Number
  include Stringify
  extend Math
  
  def initialize(value)
    @value = value
  end
end
