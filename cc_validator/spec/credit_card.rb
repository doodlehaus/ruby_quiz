require 'spec_helper'

#| AMEX       | 34 or 37    | 15            |
#+------------+-------------+---------------+
#| Discover   | 6011        | 16            |
#+------------+-------------+---------------+
#| MasterCard | 51-55       | 16            |
#+------------+-------------+---------------+
#| Visa       | 4           | 13 or 16      |

describe CreditCard do

  describe "card type" do
    describe "Visa" do

      it 'can start with 4 and have 16 digits' do
        @card = CreditCard.new("4055011111111111")
        @card.type.should == ("Visa")
      end

      it 'can start with 4 and have 13 digits' do
        @card = CreditCard.new("4055011111111")
        @card.type.should == ("Visa")
      end

    end

    describe "Amex" do
      it 'can start with a 34 and have 15 digits' do
        @card = CreditCard.new("341111111111111")
        @card.type.should == "Amex"
      end

      it 'can start with a 37 and be 15 digits' do
        @card = CreditCard.new("371111111111111")
        @card.type.should == "Amex"
      end
    end

    describe "Discover" do
      it 'starts with 6011 and has 16 digits' do
        @card = CreditCard.new("6011111111111111")
        @card.type.should == "Discover"
      end
    end

    describe "MasterCard" do
      it 'starts with 51, 52, 53, 54 or 55 and is 16 digits' do
        @card = CreditCard.new("5111111111111111")
        @card.type.should == "MasterCard"
      end
    end
  end

  describe "card validation" do

    describe "a valid card" do
       it 'should return true for a valid card' do
         @card = CreditCard.new("4408041234567893")
         @card.should be_valid
       end

       it 'should return false for an invalid card' do
         @card = CreditCard.new("4417123456789112")
         @card.should_not be_valid
       end
    end
    
  end
end
