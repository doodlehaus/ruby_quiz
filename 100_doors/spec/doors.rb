require_relative '../lib/doors.rb'

describe "initializing doors" do

  before do
    @doors = Doors.new
  end

  it 'should create a doors object' do
    @doors.object_id.should_not == nil
  end

  it 'should have 100 doors' do
    @doors.doors.count.should == 100
  end

  it 'should have all 100 closed' do
    @doors.doors.each do |door|
      door.state.should == 'closed'
    end
  end

end

describe "Door class" do

  describe "intializing a door" do

    before do
      @door = Door.new
    end

    it 'should create a door' do
      @door.should_not == nil
    end

    it 'should be closed' do
      @door.state.should == 'closed'
    end

    it 'should respond to toggle' do
      @door.should respond_to(:toggle)
    end
    
  end

  describe 'door methods' do
    
    before do
      @door = Door.new
    end

    it 'should close if open' do
      @door.state = 'open'
      @door.toggle.should == 'closed'
    end
    
    it 'should open if closed' do
      @door.state = 'closed'
      @door.toggle.should == 'open'
    end
  end
  
end
