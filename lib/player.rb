class Player
attr_accessor :shots_taken, :patrol_boat_hits, :destroyer_hits
attr_reader :grids

  def initialize
    @shots_taken = 0
    @grids = PlayerGrids.new
    @patrol_boat_hits = 0
    @destroyer_hits = 0
  end

  def place_ship(ship_size, coord)
    locations = grids.translate_coord(coord)
    grids.ships << locations
  end
  
end
