class AiPlayer
  attr_reader :shots_taken, :grids, :patrol_boat_hits, :destroyer_hits

    def initialize
      @shots_taken = 0
      @grids = PlayerGrids.new
      @patrol_boat_hits = 0
      @destroyer_hits = 0
    end

end
