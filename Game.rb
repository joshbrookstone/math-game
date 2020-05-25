class Game
  
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = @player1
  end

  def switch_turn
    @current_player = @current_player == @player1 ?  @player2 : @player1  
  end

  def show_stats
    puts "#{@player1.name} : #{@player1.lives_left} / 3 vs #{@player2.name} : #{@player2.lives_left} / 3"
  end

  def start_game
 
  
    puts "Hello #{@player2.name}"
    puts "Time to start the game"
    puts "You both have #{Player.get_lives} lives to start"
  
    until ((@player1.is_alive == false) || (@player2.is_alive == false) ) do

      show_stats
      
     
        questions = Questions.new

       
        puts "----- NEW TURN -----"

        puts "#{@current_player.name}: #{questions.ask_question}"
        answer = $stdin.gets.chomp.to_i
        result = questions.compare_answer(answer)
        puts result ?  "Nice you got the answer" :  "Wrong Answer!"

        unless result
          @current_player.lose_life      
        end
        
       
      switch_turn
       
     

    end

    puts @player1.is_alive ? "#{@player1.name} wins with a score of  #{@player1.lives_left}/3" : "#{@player2.name} wins with a score of  #{@player2.lives_left}/3"

  end 
end
  

