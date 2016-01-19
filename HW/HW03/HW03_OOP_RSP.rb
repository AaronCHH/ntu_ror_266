class Player
  attr_accessor:name
  def initialize(name)
    @name = name
  end
end

# 人類玩家的類別
class Human < Player
  def get_gesture
    input = gets.chomp.upcase
  end
end

# 電腦的類別
class Computer < Player
  def get_gesture
    input = ['R', 'P', 'S'].shuffle!.last
  end
end

class RPS

  attr_accessor :user_input, :ans

  Aaron = Human.new("Aaron")
  PC = Computer.new("PC")

  def initialize
    intro
    continue?
  end

  def intro
    #印出開場畫面，告訴玩家遊戲規則
    puts "|===============================================|"
    puts "|Welcome to Rock Paper Scissors!!!              |"
    puts "|===============================================|"
    puts "Welcome #{Aaron.name}!"
  end

  def decide(user_input, ans)
    #邏輯判斷式
    win_message = "You win!"
    lose_message = "You lose!"
    tie_message = "It's tie!"
    result_message = ""

    case user_input
    when "R" then  user_info = "You choose Rock, "
    when "P" then  user_info = "You choose Paper, "
    when "S" then  user_info = "You choose Paper, "
    end

    case ans
    when "R" then  pc_info = "Computer choose Rock. "
    when "P" then  pc_info = "Computer choose Paper. "
    when "S" then  pc_info = "Computer choose Paper. "
    end

    if (user_input == "R" && ans == "S") || (user_input == "S" && ans == "P") || (user_input == "P" && ans == "R")
      result_message = win_message
    elsif (user_input == "R" && ans == "P") || (user_input == "S" && ans == "R") || (user_input == "P" && ans == "S")
      result_message = lose_message
    else
      result_message = tie_message
    end

    show_message(user_info, pc_info, result_message)
  end

  def get_player_gestures
    #取得玩家和電腦兩個物件的
    begin
      puts "please choose one of the following: R / P / S"
      self.user_input = Aaron.get_gesture
    end while !["R", "P", "S"].include?(user_input)
    self.ans = PC.get_gesture
  end

  def continue?
    #判斷玩家是否要繼續下一輪
    begin
      get_player_gestures
      decide(self.user_input, self.ans)
      begin
        puts "Play Again?: Y / N"
        continue = gets.chomp.upcase
      end while !["Y", "N"].include?(continue)
    end while continue != "N"
    puts "Good Bye! Thanks for playing!"
  end

  def show_message(user_info, pc_info, result_message)
    #印出結果
    puts "#{user_info}#{pc_info}#{result_message}"
  end
end

# ------------Main Program Starts Here ---------------------
# 主程式只要一行即可
game = RPS.new
