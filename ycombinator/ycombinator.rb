#def factorial(n)
  #if n == 0
    #1
  #else
    #n * factorial(n - 1)
  #end
#end

#(1..10).each do |n|
  #puts factorial(n.to_i)
#end


def Y
  lambda { |f| f.call(f) }.call(
    lambda do |g|
      yield(lambda {|*n| g.call(g).call(*n) })
    end)
end

x = ARGV[0].to_i
puts Y { |this| lambda { |n| n == 0 ? 1 : n * this.call(n - 1)} }.call(x)
