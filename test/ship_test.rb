require "./test/test_helper"
require "./lib/ship"

class ShipTest < Minitest::Test

  def test_can_create_two_unit_ship
    ship = Ship.new(2)
    assert_equal 2, ship.length
  end

  def test_can_create_three_unit_ship
    ship = Ship.new(3)
    assert_equal 3, ship.length
  end

  def test_ship_knows_its_location
    ship = Ship.new(2, "A1 A2")
    assert_equal "A1 A2", ship.location
    ship = Ship.new(3, "A1 A3")
    assert_equal "A1 A3", ship.location
  end

  def test_ship_is_not_sunk_by_default
    ship = Ship.new(2)
    assert_equal false, ship.sunk?
  end

  def test_ship_can_take_hits
    ship = Ship.new(2)
    assert_equal 1, ship.hit
  end

  def test_ship_sinks
    ship = Ship.new(2)
    ship.hit
    ship.hit
    assert_equal true, ship.sunk?
  end
end
