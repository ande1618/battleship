require "./lib/messages"
require "./test/test_helper"

class MessagesTest < Minitest::Test

  def test_for_welcome_message
    skip
    output = Messages.welcome_message
    assert_equal "Welcome to BATTLESHIP", output
  end

  def test_for_start_menu
    output = Messages.start_menu
    assert_equal "\n Would you like to (p)lay, read the (i)nstructions, or (q)uit?", output
  end

  def test_for_ship_placement_message
    output = Messages.ship_placement
    message = "\n I have laid out my ships on the grid. \n You now need to layout your two ships. \n The first is two units long and the second is three units long. \n The grid has A1 at the top left and D4 at the bottom right. \n \n Enter the squares for the two-unit ship:"
    assert_equal message, output
  end

  def test_for_instructions_message
    output = Messages.instructions
    message = "You are about to embark on a dangerous voyage against a computer that is eager to sink your flotilla. \n You and the computer will each place two ships on the grid. \n After the ships have been placed, you will take turns guessing where the other's ships are and keep record on your grid with either 'M' for miss or 'H' for hit. \n The first to sink the opposing player's ships wins. \n Good luck."
    assert_equal message, output
  end

  def test_for_quit_message
    output = Messages.quit_message
    message = "Thanks for playing and smooth sailing!"
    assert_equal message, output
  end

  def test_for_coordinates_prompt
    output = Messages.coordinates_prompt("two-unit")
    message = "Please enter the alpha-numeric starting and ending coordinates for your two-unit ship (i.e. A1 A3 for a three-unit ship)"
    assert_equal message, output
    output = Messages.coordinates_prompt("three-unit")
    message = "Please enter the alpha-numeric starting and ending coordinates for your three-unit ship (i.e. A1 A3 for a three-unit ship)"
    assert_equal message, output
  end

  def test_ship_placement_error_message
    output = Messages.ship_placement_error
    message = "Your entry should contain a space and adjacent coordinates (ex. A1 B1) and ships cannot overlap. Please try again."
    assert_equal message, output
  end

  def test_attack_message
    output = Messages.attack
    message = "Please enter the coordinates that you would like to fire upon."
    assert_equal message, output
  end

  def test_hit_message
    output = Messages.hit
    message = "Well done. You've hit them sqaure on."
    assert_equal message, output
  end

  def test_miss_message
    output = Messages.miss
    message = "There's nothing there but open water. That one was a miss."
    assert_equal message, output
  end

  def test_continue_to_next_turn_message
    output = Messages.next_turn
    message = "Please press ENTER to continue."
    assert_equal message, output
  end

  def test_sunken_ship_message
    output = Messages.ship_sunk("two-unit")
    message = "Well done, you've sunk their two-unit ship."
    assert_equal message, output
    output = Messages.ship_sunk("three-unit")
    message = "Well done, you've sunk their three-unit ship."
  end

  def test_you_win_message
    output = Messages.you_win
    message = "Congratulations! You won, the seas are safe at last."
    assert_equal message, output
  end

  def test_you_lost_message
    output = Messages.you_lose
    message = "I'm sorry, they've sunk your entire fleet. Please come back with more firepower."
    assert_equal message, output
  end

  def test_incoming_shot_message
    output = Messages.incoming_shot
    message = "Incoming! The computer has fired."
    assert_equal message, output
  end

  def test_computer_board_message
    output = Messages.computer_board
    message = "Here's where their shots have landed:"
    assert_equal message, output
  end

  def test_player_board_message
    output = Messages.player_board
    message = "Here's where your shots have landed:"
    assert_equal message, output
  end

  def test_player_already_used_message
    output = Messages.already_used
    message = "You've already fired on those coordinates!"
    assert_equal message, output
  end

  def test_invalid_key_message
    output = Messages.invalid_key
    message = "Your input was not a valid response. Please try again."
    assert_equal message, output
  end

end
