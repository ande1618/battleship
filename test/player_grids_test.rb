require "./test/test_helper"
require "./lib/player_grids"
# require "./lib/battleship"
require "./lib/grid"
require "pry"

class PlayerGridsTest < Minitest::Test

  def test_creates_grid_for_shots_ships
    grid = PlayerGrids.new
    assert_instance_of Grid, grid.shots
    assert_instance_of Grid, grid.ships
  end

  def test_can_add_hit_miss
    skip
    grid = PlayerGrids.new
    assert_equal
  end


  def test_can_translate_coordinates
    grid = PlayerGrids.new
    assert_equal [1, 1, 1, 2], grid.translate_coord("A1 A2")
  end

end
