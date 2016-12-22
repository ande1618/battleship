class Messages

  def self.welcome_message
    "\n \n Welcome to BATTLESHIP \n \n" + start_menu
  end

  def self.start_menu
    "\n Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def self.ship_placement
    "\n I have laid out my ships on the grid. \n You now need to layout your two ships. \n The first is two units long and the second is three units long. \n The grid has A1 at the top left and D4 at the bottom right. \n \n Enter the squares for the two-unit ship:"
   end

  def self.instructions
    "You are about to embark on a dangerous voyage against a computer that is eager to sink your flotilla. \n You and the computer will each place two ships on the grid. \n After the ships have been placed, you will take turns guessing where the other's ships are and keep record on your grid with either 'M' for miss or 'H' for hit. \n The first to sink the opposing player's ships wins. \n Good luck."
  end

  def self.quit_message
    "Thanks for playing and smooth sailing!"
  end

  def self.coordinates_prompt(ship_size)
    "Please enter the alpha-numeric starting and ending coordinates for your #{ship_size} ship (i.e. A1 A3 for a three-unit ship)"
  end

  def self.ship_placement_error
    "Your entry should contain a space and adjacent coordinates (ex. A1 B1) and ships cannot overlap. Please try again."
  end

  def self.attack
    "Please enter the coordinates that you would like to fire upon."
  end

  def self.hit
    "Well done. You've hit them sqaure on."
  end

  def self.miss
    "There's nothing there but open water. That one was a miss."
  end

  def self.next_turn
    "Please press ENTER to continue."
  end

  def self.ship_sunk(ship_size)
    "Well done, you've sunk their #{ship_size} ship."
  end

  def self.you_win
    "Congratulations! You won, the seas are safe at last."
  end

  def self.you_lose
    "I'm sorry, they've sunk your entire fleet. Please come back with more firepower."
  end

  def self.incoming_shot
    "Incoming! The computer has fired."
  end

  def self.computer_board
    "Here's where their shots have landed:"
  end

  def self.player_board
    "Here's where your shots have landed:"
  end

  def self.already_used
    "You've already fired on those coordinates!"
  end

  def self.invalid_key
    "Your input was not a valid response. Please try again."
  end
end
