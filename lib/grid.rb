class Grid

  def initialize
    @grid = complete
  end

  def header_footer
    Array.new ["==========="]
  end

  def column
    Array.new [".", "1", "2", "3", "4"]
  end

  def row(letter)
    [letter, " ", " ", " ", " "]
  end

  def complete
    [column, row("A"), row("B"), row("C"), row("D")]
  end

  def terminal_grid
    @grid.each do |row|
      row.each do |item|
        print item + ' '
      end
      puts ''
    end
    puts "\n\n"
  end
  #
  grid = Grid.new
  print grid.terminal_grid
end
