class Players
  attr_reader :lives
  attr_accessor :name
  
  @@lives = 3

  def initialize(name)
    @name = name
  end

  def get_lives
    @@lives
  end

  def lose_life
    @@lives -= 1
  end
  
end
