require "./test/test_helper"
require "./lib/battleship"
require "./lib/messages"

class BattleshipTest <Minitest::Test

  def test_prints_start_message
    game = Battleship.new
    puts Messages.welcome_message
  end

end
