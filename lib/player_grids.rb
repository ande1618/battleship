require "./lib/grid"

class PlayerGrids

  attr_reader :shots, :ships

  def initialize
    @shots = Grid.new
    @ships = Grid.new
  end

  def add_hit_or_miss(coord, hit_miss)
      shots.grid << coord.translate_coord
    end

  def translate_coord(coord)
    extracted = []
    extracted = coord.split.join.chars.map.with_index do |c, index|
      index == 0 || index == 2 ? c.ord - 64 : c.to_i
    end
    extracted
  end
end
