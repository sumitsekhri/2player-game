def player_data
  @player_1_lives = 3
  @player_2_lives = 3
  @player_1_score = 0
  @player_2_score = 0
end

# how many lives are left

def generate_numbers
  @num1 = (rand(20)+1)
  @num2 = (rand(20)+1)
end

def computer_answer
  generate_numbers
  @final_value = @num1 + @num2
end


def player1
  computer_answer
  puts "Player 1 - What is #{@num1} + #{@num2}"
  my_guess = gets.chomp.to_i
  if @final_value == my_guess
    @player_1_score += 1
    puts "You're correct!"
  else
    @player_1_lives -= 1
    puts "You're wrong"
  end
end

def player2
  computer_answer
  puts "Player 2 - What is #{@num1} + #{@num2}"
  my_guess = gets.chomp.to_i
  if @final_value == my_guess
    @player_2_score += 1
    puts "You're correct!"
  else
    @player_2_lives -= 1
    puts "You're wrong"
  end
end

def game
  player_data

  loop do
  computer_answer
  player1
  player2

    if @player_1_lives == 0
      puts "Player 1 Wins!"
      break
    end

    if @player_2_lives == 0
      puts "You are DEAD!"
      break
    end

  end
end

game