puts "Enter a number:"
number = gets.chomp.to_i
wonderous_numbers = [ number ]
wonderous_numbers << lambda{ wonderous_numbers.last.even? ? wonderous_numbers.last / 2 : wonderous_numbers.last * 3 + 1 }.call until wonderous_numbers.last == 1 
puts wonderous_numbers.to_s
