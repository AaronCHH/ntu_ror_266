# homework1
# 剪刀石頭布
# 先要使用者輸入剪刀石頭或布的其中一個選項
# 接下來讓電腦亂數選出一個選項
# 比較兩個選項，決定誰贏誰輸
# 輸出結果
# 問使用者是否再玩一次

# Define Function
def play(user_input, ans)
  win_message = "You win!"
  lose_message = "You lose!"
  tie_message = "It's tie!"

  if user_input == "R"
    printf "You choose Rock, "
    if ans == "R"
      printf "Computer choose Rock "
      puts tie_message
    elsif ans == "P"
      printf "Computer choose Paper "
      puts lose_message
    else
      printf "Computer choose Scissors "
      puts win_message   
    end

  elsif user_input == "P"
    printf "You choose Paper "
    if ans == "R"
      printf "Computer choose Rock "
      puts win_message
    elsif ans == "P"
      printf "Computer choose Paper "
      puts tie_message
    else
      printf "Computer choose Scissors "
      puts lose_message 
    end
  else
    printf "You choose Scissors "
    if ans == "R"
      printf "Computer choose Rock "
      puts lose_message
    elsif ans == "P"
      printf "Computer choose Paper "
      puts win_message
    else
      printf "Computer choose Scissors "
      puts tie_message   
    end  
  end    
end

begin #可以美化輸出
  puts "|===============================================|"
  puts "|Welcome to Rock Paper Scissors!!!              |"
  puts "|===============================================|"

  begin
    puts "please choose one of the following: R / P / S"
    user_input = gets.chomp.upcase
  end while !["R", "P", "S"].include?(user_input)

  # Create Answer
  ans = ["R", "P", "S"].shuffle.last.upcase

  # Play game
  play(user_input, ans)

  #問使用者是否還要再玩
  begin
    puts "Play Again?: Y / N"
    continue = gets.chomp.upcase
  end while !["Y", "N"].include?(continue)

end while continue == "Y"
# 若使用者回答 "N"，印出離開的訊息，不是就回到迴圈的上層繼續玩
puts "Good Bye! Thanks for playing!"

# Status API Training Shop Blog About Pricing
# © 2016 GitHub, Inc. Terms Privacy Security Contact Help
