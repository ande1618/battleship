require "./test/test_helper"
require "./lib/player"
require "./lib/grid"
require "./lib/player_grids"
require "pry"

class PlayerTest < Minitest::Test

  def test_instance_of_player
    player = Player.new
    assert_instance_of Player, player
  end

  def test_it_has_its_own_grids
    player = Player.new
    grids = PlayerGrids.new
    assert_instance_of PlayerGrids, grids
  end

  def test_it_has_its_own_shots_grid
    player = Player.new
    grid = player.grids.shots
    assert_instance_of Grid, grid
  end

  def test_it_has_its_own_ships_grid
    player = Player.new
    grid = player.grids.ships
    assert_instance_of Grid, grid
  end
  def test_shots_start_at_0
    player = Player.new
    assert_equal 0, player.shots_taken
  end

  def test_ship_hits_start_at_0
    player = Player.new
    assert_equal 0, player.patrol_boat_hits
    assert_equal 0, player.destroyer_hits
  end

  def test_it_can_place_ship_on_board
    player = Player.new
    placement = player.place_ship(2, "A1 A2")
    grid = grids.ships
    assert_equal grid, placement
  end

end
