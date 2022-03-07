class Player
  attr_accessor :lives, :current_player, :id

  def initialize(id)
    @lives = 3
    @current_player = false
    @id = id
  end

end