# 可把 module 想像成工具箱，本身並不是 class
# 不可 new，只能被 include 到其他 class 裡面使用
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