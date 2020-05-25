class Player
  attr_reader :lives 
  attr_accessor :name, :my_turn

  @@lives = 3
  @@players = 0
  

  def initialize(name)
    @name = name
    @lives = 3
    @@players +=1
    @@players == 1 ? @my_turn = true : @my_turn = false
  end

  def self.get_lives
    @@lives
  end

  def is_alive
    @lives > 0 
  end

  def lose_life
    @lives -= 1
  end

  def lives_left
    @lives
  end
  

  def self.get_players
    @@players
  end

end

