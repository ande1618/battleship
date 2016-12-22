class Ship

attr_reader :length, :location, :hits

  def initialize(length, location = "")
    @length = length
    @hits = length
    @location = location
  end


  def sunk?
    @hits == 0
  end

  def hit
    @hits -= 1
  end

end
