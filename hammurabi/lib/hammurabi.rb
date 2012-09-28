class Hammurabi

  attr_accessor :turn, :population, :city_acreage, :starved, :price_of_land
  BUSHELS_TO_SURVIVE = 20
  BUSHELS_TO_PLANT_ONE_ACRE = 1
  MIN_PRICE_OF_LAND = 17
  MAX_PRICE_OF_LAND = 26

  def initialize
    @turn = 1
    @population = 100
    @city_acreage = 1000
    @bushels_in_store = 3000
    @starved = 0
    @price_of_land = price_of_land
  end

  def price_of_land
    (MIN_PRICE_OF_LAND..MAX_PRICE_OF_LAND).to_a.sample
  end

  def user_turn
    acres_to_sell
    feed_people
    plant_seed
  end

  def acres_to_sell
    puts "How many acres do you wish to buy or sell?"
    @acres_to_sell = STDIN.gets
  end

  def feed_people
    puts "How many bushels do you wish to feed your people?"
    @feed_people = STDIN.gets
  end

  def plant_seed
    puts "How many acres do you wish to plant with seed?"
    @plant_seed = STDIN.gets
  end
end


@h = Hammurabi.new

while @h.turn <= 10
  puts "============================="
  puts "Year #{@h.turn}" 
  puts "----------------------------"
  puts "In year #{@h.turn}, #{@h.starved} people starved"
  puts "X people came to the city"
  puts "The city population is now #{@h.population}"
  puts "The city now owns #{@h.city_acreage} acres"
  puts "You harvested X bushels per acre"
  puts "You now have X bushels in store"
  puts "Land is trading at #{@h.price_of_land} bushels per acre"
  puts "============================="
  @h.user_turn
  @h.turn = @h.turn + 1
end
