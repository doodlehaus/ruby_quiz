class Door

  attr_accessor :state

  def initialize
    @state = 'closed'
  end

  def toggle
    @state = @state == 'closed' ? 'open' : 'closed'
  end

end

class Doors

  attr_accessor :doors

  def initialize
    @doors = []
    (1..100).each do
      d = Door.new
      @doors << d
    end
  end

end

doors = Doors.new
(1..100).each do |pass|
  puts "====================="
  puts " Pass: #{pass} "
  doors.doors.each_with_index do |door, i|
    if (i+1)%pass == 0
      door.toggle
      puts "door ##{i+1}: #{door.state}"
    end
  end
  puts "====================="

end

doors.doors.each_with_index do |door, i|
  puts "door ##{i+1}: #{door.state}"
end

