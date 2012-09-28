require_relative '../lib/hammurabi.rb'

#The game lasts 10 years, with a year being one turn.
#Each year, enter how many bushels of grain to allocate to buying (or selling) acres of land, feeding your population, and planting crops for the next year.
#Each person needs 20 bushels of grain each year to live and can till at most 10 acres of land.
#Each acre of land requires one bushel of grain to plant seeds.
#The price of each acre of land fluctuates from 17 bushels per acre to 26 bushels.
#If the conditions in your country ever become bad enough, the people will overthrow you and you won't finish your 10 year term.
#If you make it to the 11th year, your rule will be evaluated and you'll be ranked against great figures in history.
#
describe "Hammurabi class" do
  
  before do
    @h = Hammurabi.new
  end
  
  it 'should create a game instance' do
    @h.class.should be(Hammurabi)
  end

  it 'should initialize the game' do
    @h.turn.should be(1)
    Hammurabi::BUSHELS_TO_SURVIVE.should be(20)
    Hammurabi::BUSHELS_TO_PLANT_ONE_ACRE.should be(1)
    Hammurabi::MIN_PRICE_OF_LAND.should be(17)
    Hammurabi::MAX_PRICE_OF_LAND.should be(26)
    @h.population.should be(100)
    @h.city_acreage.should be(1000)
  end

  it 'should randomly generate the price of land' do
    @h.price_of_land.should be <= 26
    @h.price_of_land.should be >= 17
  end

end


