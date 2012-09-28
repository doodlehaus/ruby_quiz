require 'test/unit'
require_relative "karate_chop"

class KarateTest < Test::Unit::TestCase
  def test_chop1
    assert_equal(-1, Karate.chop1(3, []))
    assert_equal(-1, Karate.chop1(3, [1]))
    assert_equal(0,  Karate.chop1(1, [1]))
    
    assert_equal(0,  Karate.chop1(1, [1, 3, 5]))
    assert_equal(1,  Karate.chop1(3, [1, 3, 5]))
    assert_equal(2,  Karate.chop1(5, [1, 3, 5]))
    assert_equal(-1, Karate.chop1(0, [1, 3, 5]))
    assert_equal(-1, Karate.chop1(2, [1, 3, 5]))
    assert_equal(-1, Karate.chop1(4, [1, 3, 5]))
    assert_equal(-1, Karate.chop1(6, [1, 3, 5]))
    
    assert_equal(0,  Karate.chop1(1, [1, 3, 5, 7]))
    assert_equal(1,  Karate.chop1(3, [1, 3, 5, 7]))
    assert_equal(2,  Karate.chop1(5, [1, 3, 5, 7]))
    assert_equal(3,  Karate.chop1(7, [1, 3, 5, 7]))
    assert_equal(-1, Karate.chop1(0, [1, 3, 5, 7]))
    assert_equal(-1, Karate.chop1(2, [1, 3, 5, 7]))
    assert_equal(-1, Karate.chop1(4, [1, 3, 5, 7]))
    assert_equal(-1, Karate.chop1(6, [1, 3, 5, 7]))
    assert_equal(-1, Karate.chop1(8, [1, 3, 5, 7]))
  end

  def test_chop2
    assert_equal(-1, Karate.chop2(3, []))
    assert_equal(-1, Karate.chop2(3, [1]))
    assert_equal(0,  Karate.chop2(1, [1]))
    
    assert_equal(0,  Karate.chop2(1, [1, 3, 5]))
    assert_equal(1,  Karate.chop2(3, [1, 3, 5]))
    assert_equal(2,  Karate.chop2(5, [1, 3, 5]))
    assert_equal(-1, Karate.chop2(0, [1, 3, 5]))
    assert_equal(-1, Karate.chop2(2, [1, 3, 5]))
    assert_equal(-1, Karate.chop2(4, [1, 3, 5]))
    assert_equal(-1, Karate.chop2(6, [1, 3, 5]))
    
    assert_equal(0,  Karate.chop2(1, [1, 3, 5, 7]))
    assert_equal(1,  Karate.chop2(3, [1, 3, 5, 7]))
    assert_equal(2,  Karate.chop2(5, [1, 3, 5, 7]))
    assert_equal(3,  Karate.chop2(7, [1, 3, 5, 7]))
    assert_equal(-1, Karate.chop2(0, [1, 3, 5, 7]))
    assert_equal(-1, Karate.chop2(2, [1, 3, 5, 7]))
    assert_equal(-1, Karate.chop2(4, [1, 3, 5, 7]))
    assert_equal(-1, Karate.chop2(6, [1, 3, 5, 7]))
    assert_equal(-1, Karate.chop2(8, [1, 3, 5, 7]))
  end
  def test_chop3
    assert_equal(-1, Karate.chop3(3, []))
    assert_equal(-1, Karate.chop3(3, [1]))
    assert_equal(0,  Karate.chop3(1, [1]))
    
    assert_equal(0,  Karate.chop3(1, [1, 3, 5]))
    assert_equal(1,  Karate.chop3(3, [1, 3, 5]))
    assert_equal(2,  Karate.chop3(5, [1, 3, 5]))
    assert_equal(-1, Karate.chop3(0, [1, 3, 5]))
    assert_equal(-1, Karate.chop3(2, [1, 3, 5]))
    assert_equal(-1, Karate.chop3(4, [1, 3, 5]))
    assert_equal(-1, Karate.chop3(6, [1, 3, 5]))
    
    assert_equal(0,  Karate.chop3(1, [1, 3, 5, 7]))
    assert_equal(1,  Karate.chop3(3, [1, 3, 5, 7]))
    assert_equal(2,  Karate.chop3(5, [1, 3, 5, 7]))
    assert_equal(3,  Karate.chop3(7, [1, 3, 5, 7]))
    assert_equal(-1, Karate.chop3(0, [1, 3, 5, 7]))
    assert_equal(-1, Karate.chop3(2, [1, 3, 5, 7]))
    assert_equal(-1, Karate.chop3(4, [1, 3, 5, 7]))
    assert_equal(-1, Karate.chop3(6, [1, 3, 5, 7]))
    assert_equal(-1, Karate.chop3(8, [1, 3, 5, 7]))
  end
  def test_chop4
    assert_equal(-1, Karate.chop4(3, []))
    assert_equal(-1, Karate.chop4(3, [1]))
    assert_equal(0,  Karate.chop4(1, [1]))
    
    assert_equal(0,  Karate.chop4(1, [1, 3, 5]))
    assert_equal(1,  Karate.chop4(3, [1, 3, 5]))
    assert_equal(2,  Karate.chop4(5, [1, 3, 5]))
    assert_equal(-1, Karate.chop4(0, [1, 3, 5]))
    assert_equal(-1, Karate.chop4(2, [1, 3, 5]))
    assert_equal(-1, Karate.chop4(4, [1, 3, 5]))
    assert_equal(-1, Karate.chop4(6, [1, 3, 5]))
    
    assert_equal(0,  Karate.chop4(1, [1, 3, 5, 7]))
    assert_equal(1,  Karate.chop4(3, [1, 3, 5, 7]))
    assert_equal(2,  Karate.chop4(5, [1, 3, 5, 7]))
    assert_equal(3,  Karate.chop4(7, [1, 3, 5, 7]))
    assert_equal(-1, Karate.chop4(0, [1, 3, 5, 7]))
    assert_equal(-1, Karate.chop4(2, [1, 3, 5, 7]))
    assert_equal(-1, Karate.chop4(4, [1, 3, 5, 7]))
    assert_equal(-1, Karate.chop4(6, [1, 3, 5, 7]))
    assert_equal(-1, Karate.chop4(8, [1, 3, 5, 7]))
  end
  def test_chop5
    assert_equal(-1, Karate.chop5(3, []))
    assert_equal(-1, Karate.chop5(3, [1]))
    assert_equal(0,  Karate.chop5(1, [1]))
    
    assert_equal(0,  Karate.chop5(1, [1, 3, 5]))
    assert_equal(1,  Karate.chop5(3, [1, 3, 5]))
    assert_equal(2,  Karate.chop5(5, [1, 3, 5]))
    assert_equal(-1, Karate.chop5(0, [1, 3, 5]))
    assert_equal(-1, Karate.chop5(2, [1, 3, 5]))
    assert_equal(-1, Karate.chop5(4, [1, 3, 5]))
    assert_equal(-1, Karate.chop5(6, [1, 3, 5]))
    
    assert_equal(0,  Karate.chop5(1, [1, 3, 5, 7]))
    assert_equal(1,  Karate.chop5(3, [1, 3, 5, 7]))
    assert_equal(2,  Karate.chop5(5, [1, 3, 5, 7]))
    assert_equal(3,  Karate.chop5(7, [1, 3, 5, 7]))
    assert_equal(-1, Karate.chop5(0, [1, 3, 5, 7]))
    assert_equal(-1, Karate.chop5(2, [1, 3, 5, 7]))
    assert_equal(-1, Karate.chop5(4, [1, 3, 5, 7]))
    assert_equal(-1, Karate.chop5(6, [1, 3, 5, 7]))
    assert_equal(-1, Karate.chop5(8, [1, 3, 5, 7]))
  end
end
