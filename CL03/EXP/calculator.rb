require 'pry'

def get_operator
  begin 
    puts "Please choose your operation: "
    puts "1) add 2) substract 3) multiply 4) divide"
    operation = gets.chomp.to_i
  end while ![1,2,3,4].include?(operation)

  operation
end

def calculate(operation, num1, num2)
  case operation
  when 1 then puts "your anwser is: #{num1.to_f + num2.to_f}"
  when 2 then puts "your anwser is: #{num1.to_f - num2.to_f}" 
  when 3 then puts "your anwser is: #{num1.to_f * num2.to_f}"
  when 4 then puts "your anwser is: #{num1.to_f / num2.to_f}"
  end
end

def get_user_inputs
  puts "Please enter the first number: "
  num1 = gets.chomp

  puts "Please enter the second number: "
  num2 = gets.chomp

  [num1, num2]
end

# --- main program starts here
operation = get_operator()
user_inputs = get_user_inputs()

calculate(operation, user_inputs[0], user_inputs[1])