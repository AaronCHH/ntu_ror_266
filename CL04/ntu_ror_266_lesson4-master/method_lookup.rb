module Knowledge
  def program
    puts "I know how to program"
  end
end

class Person  
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end

class Engineer < Person
  include Knowledge
end

bob = Engineer.new("Bob", 17)
bob.program
# => I know how to program

# 尋找 Engineer 的祖先們
puts Engineer.ancestors

# Engineer
# Knowledge
# Person
# Object
# Kernel
# BasicObject

# 一旦 object 呼叫了一個它的 Class 裡面沒有的 method
# 他就會依序找他所有的祖先，若找到了有這個 method 的祖先，就使用這個祖先類別的 method