x = (1..100).map do |round|
  (1..100).map do |door|
    door % round == 0 ? -1 : 1
  end
end.reduce do |memo, doors|
  memo.zip(doors).map{|a,b| a*b}
end.map do |door|
  door > 0 ? 'closed' : 'open'
end

x.each_with_index do |a, i|
  puts "Door %3d: %s" % [i+1, a]
end
