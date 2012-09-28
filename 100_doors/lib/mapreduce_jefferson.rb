a = [1, 1, 1]
b = [1, -1, 1]
c = [1, -1, -1]

x = []
x << a
x << b
x << c

y = x.reduce do |memo, value|
  puts "Memo: #{memo}"
  puts "Value: #{value}"
  result = memo.zip(value)
  puts "Result: #{result}"
  result = result.map { |a, b| a*b}
  puts "Result: #{result}"
  result
end.map do |door|
  door == 1 ? 'open' : 'closed'
end

puts "Y: #{y}"

