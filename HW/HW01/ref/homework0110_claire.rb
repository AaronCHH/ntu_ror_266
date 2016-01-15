# homework1
# 剪刀石頭布
# 先要使用者輸入剪刀石頭或布的其中一個選項
# 接下來讓電腦亂數選出一個選項
# 比較兩個選項，決定誰贏誰輸
# 輸出結果
# 問使用者是否再玩一次

begin #可以美化輸出
  puts "|===============================================|" 
  puts "|Welcome to Rock Paper Scissors!!!              |"
  puts "|===============================================|"


begin  #使用者輸入其中一個選項

puts " Please choose one of the following: R / P / S"
user_input = gets.chomp.upcase
end while !["R" , "P" , "S"].include?(user_input)
  	

# 接下來讓電腦亂數選出一個選項
	
	computer_input2 = ["R" , "P" , "S"]
	computer_input = computer_input2.shuffle[1].upcase
	puts " ================================================"
	puts "  You choose #{user_input}"
	puts "  Computer throw #{computer_input}"
	puts " ================================================"


# 比較兩個選項，決定誰贏誰輸
# 輸出結果

		if (user_input == "R") && (computer_input == "P")
			puts "You Lose the game!!"
		elsif (user_input == "P") && (computer_input == "S")
			puts "You Lose the game!!"
		elsif (user_input == "S") && (computer_input == "R")
			puts "You Lose the game!!"
		elsif (user_input == "R") && (computer_input == "S")
			puts "You Win the game!!"
		elsif (user_input == "P") && (computer_input == "R")
			puts "You Win the game!!"
		elsif (user_input == "S") && (computer_input == "P")
			puts "You Win the game!!"
		elsif user_input == computer_input
			puts "The game ended in a draw!!"
		end

# 問使用者是否再玩一次

		begin
		   puts 
		   puts "Play Again?: Y / N"
		   contiune = gets.chomp.upcase
		end while !["Y","N"].include?(contiune)

end while contiune == "Y"
	puts "Good bye! Thanks for playing!"


