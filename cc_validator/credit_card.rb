class CreditCard
  attr_accessor :number, :type

#| AMEX       | 34 or 37    | 15            |
#+------------+-------------+---------------+
#| Discover   | 6011        | 16            |
#+------------+-------------+---------------+
#| MasterCard | 51-55       | 16            |
#+------------+-------------+---------------+
#| Visa       | 4           | 13 or 16      |

  def initialize number
    @number = number
  end

  def type
    return "Visa" if is_visa?
    return "Amex" if is_amex?
    return "Discover" if is_discover?
    return "MasterCard" if is_mastercard?
  end

  def is_visa?
    @number[0] == '4' && (@number.length == 13 || @number.length == 16)
  end

  def is_amex?
    (@number[0..1] == '34' || @number[0..1] == '37') && @number.length == 15
  end

  def is_discover?
    @number[0..3] == '6011' && @number.length == 16
  end

  def is_mastercard?
    ('51'..'55') === @number[0..1] && @number.length == 16
  end

  def valid?
    digits = ''
    @number
      .split('')
      .reverse
      .each_with_index do |d,i|
        digits += d if i%2 == 0
        digits += (d.to_i*2).to_s if i%2 == 1
    end

    digits.split('').inject(0){ |sum,d| sum + d.to_i } % 10 == 0
  end
end
