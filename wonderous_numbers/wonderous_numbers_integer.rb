class Integer
  
  def wonderous_numbers
    wonderous_numbers = [ self ]
    until wonderous_numbers.last == 1
      if wonderous_numbers.last % 2 == 1
        wonderous_numbers << wonderous_numbers.last * 3 + 1
      else
        wonderous_numbers << wonderous_numbers.last / 2
      end
    end
    wonderous_numbers
  end

end

puts "Enter a number:"
number = gets.chomp.to_i
puts number.wonderous_numbers.to_s
