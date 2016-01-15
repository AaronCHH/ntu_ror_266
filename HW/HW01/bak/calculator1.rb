require 'pry'

def check_operation
  begin
    puts "please enter your operation:"
    puts "1) add 2) substract 3) multiply 4) divide"
    operation = gets.chomp.to_i
  end while ![1,2,3,4].include?(operation)

  return operation
end

def calculate(operation, num1, num2)
  case operation  
  when 1 
    puts "your answer is: #{num1 + num2}"
  when 2 
    puts "your answer is: #{num1 - num2}"
  when 3
    puts "your answer is: #{num1 * num2}"
  else
    puts "your answer is: #{num1.to_f / num2.to_f}"
  end
end

#--------------Main program starts here-----------------

puts "Welcome ruby calculator!!!"

puts "please enter the first number:"
num1 = gets.chomp.to_i
puts "please enter the second number:"
num2 = gets.chomp.to_i

operation = check_operation()
calculate(operation, num1, num2)

















