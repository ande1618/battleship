require "./test/test_helper"
require "./lib/grid"

class GridTest < Minitest::Test

  def test_grid_can_be_setup
    grid = Grid.new
    assert_instance_of Grid, grid
  end

  def test_grid_has_header_and_footer
    grid = Grid.new
    assert_equal ["==========="], grid.header_footer
  end

  def test_grid_has_columns
    grid = Grid.new
    assert_equal [".", "1", "2", "3", "4"], grid.column
  end

  def test_grid_has_rows
    grid = Grid.new
    assert_equal ["A", " ", " ", " ", " "], grid.row("A")
  end

  def test_grid_is_complete
    grid = Grid.new
    finished_grid = [[".", "1", "2", "3", "4"],
                     ["A", " ", " ", " ", " "],
                     ["B", " ", " ", " ", " "],
                     ["C", " ", " ", " ", " "],
                     ["D", " ", " ", " ", " "],]
    assert_equal finished_grid, grid.complete
  end
end
