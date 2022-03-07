class Game 
  attr_accessor :player1, :player2, :finished

  def initialize()
    @player1 = Player.new(1)
    @player2 = Player.new(2)

    @finished = false

    player1.current_player = true
  end

  def play()

    ### GAME ON ###

    until @finished do
      answerer = player1.current_player ? player1 : player2
  
      question = Question.new
      puts "Player #{answerer.id}: What does #{question.m} + #{question.n} equal?"
      guess = gets.chomp.to_i
  
      if guess == question.answer then
        puts "Player #{answerer.id}: YES! You are correct!"
      else 
        puts "Player #{answerer.id}: Seriously? No!"
        answerer.lives -= 1
      end
      puts "P#{player1.id}: #{player1.lives}/3 vs P#{player2.id}: #{player2.lives}/3"
  
      player1.current_player = !player1.current_player
      player2.current_player = !player2.current_player

      if player1.lives == 0 then 
        @finished = true
        puts "Player 2 wins with a score of #{player2.lives}/3"
      elsif player2.lives == 0 then
        @finished = true
        puts "Player 1 wins with a score of #{player1.lives}/3"
      end

    end

    
    ### GAME OVER ###
    puts "----- GAME OVER -----"
    puts "Good bye!"

  end


end