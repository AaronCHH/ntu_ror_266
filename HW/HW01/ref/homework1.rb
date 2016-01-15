# homework1
# Rock-paper-scissors game

# Game starts. Greet the player. 
begin
  puts "|====================================|"
  puts "|  WELCOM TO ROCK PAPER SCISSORS!    |"               
  puts "|====================================|"

  # Ask the player to choose his or her throw.
  begin
    puts "|------------------------------------|"
    puts "| Choose your throw. Enter: R / P / S|"
    puts "| R (Rock)                           |"
    puts "| P (Paper)                          |"
    puts "| S (Scissors)                       |"
    puts "|------------------------------------|"
    user_throw = gets.chomp.upcase
  end while !["R" , "P" , "S"].include?(user_throw)
  	puts "YOU: #{user_throw}"

  # Make the computer randomly choose its throw.
  computer_throw = rand(1..3)
  case computer_throw
    when 1 then computer_throw = "R"
    when 2 then computer_throw = "P"
    when 3 then computer_throw = "S"
  end

  # Tie / win / lose messages
  tie_message = "TIE"
  win_message = "YOU WIN"
  lose_message = "YOU LOSE"

  # Tie
  if user_throw == computer_throw
    puts "COMPUTER: #{computer_throw}"
    puts tie_message 

  # Win
  elsif (user_throw == "R") && (computer_throw == "S")
    puts "COMPUTER: #{computer_throw}"
    puts win_message
  elsif (user_throw == "P") && (computer_throw == "R")
    puts "COMPUTER: #{computer_throw}"
    puts win_message
  elsif (user_throw == "S") && (computer_throw == "P")
  	puts "COMPUTER: #{computer_throw}"
  	puts win_message

  # Lose
  elsif (user_throw == "R") && (computer_throw == "P")
  	puts "COMPUTER: #{computer_throw}"
  	puts lose_message 
  elsif (user_throw == "P") && (computer_throw == "S")
  	puts "COMPUTER: #{computer_throw}"
  	puts lose_message
  elsif (user_throw == "S") && (computer_throw == "R")
  	puts "COMPUTER: #{computer_throw}"
  	puts lose_message

  end

  # Ask the player if he or she want to play again.
  begin
    puts "PLAY AGAIN? Y / N"
    continue = gets.chomp.upcase
  end while !["Y" , "N"].include?(continue)

end while continue == "Y"
puts "THANKS FOR PLAYING!"