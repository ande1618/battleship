require "./test/test_helper"
require "./lib/ai_player"
require "./lib/player_grids"

class AiPlayerTest < Minitest::Test
  def test_instance_of_player
    player = AiPlayer.new
    assert_instance_of AiPlayer, player
  end

  def test_shots_start_at_0
    player = AiPlayer.new
    assert_equal 0, player.shots_taken
  end

  def test_ship_hits_start_at_0
    player = AiPlayer.new
    assert_equal 0, player.patrol_boat_hits
    assert_equal 0, player.destroyer_hits
  end

  def test_it_has_its_own_shots_grid
    player = AiPlayer.new
    grid = player.grids.shots
    assert_instance_of Grid, grid
  end

  def test_it_has_its_own_ships_grid
    player = AiPlayer.new
    grid = player.grids.ships
    assert_instance_of Grid, grid
  end
  def test_ships_can_be_added_randomly
  end
end
