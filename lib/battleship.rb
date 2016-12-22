require "./lib/ship"
require "./lib/Messages"
require "pry"


class Battleship

  # def initialize
  #   @ai = Player.new
  #   @human = AiPlayer.new
  # end

  def start_game_play
    puts Messages.welcome_message
      choice = gets.chomp.downcase
      if choice == "i" || choice == "instructions"
        puts Messages.instructions
        sleep (5)
        start_game_play
      elsif choice == "p" || choice == "play"
        puts Messages.ship_placement
        coord = gets.chomp.upcase
        puts Messages.coordinates_prompt("three-unit")
        coord = gets.chomp.upcase
      elsif choice == "q" || choice == "quit"
        puts Messages.quit_message
        sleep(1)
        abort
      else
        puts Messages.invalid_key
        start_game_play
      end
  end

  def self.ship_placement
    coordinates = []
    coordinates << two_unit_coord
    coordinates << three_unit_coord
    return coordinates.sort.join(' ')
  end
end
game = Battleship.new
game.start_game_play
