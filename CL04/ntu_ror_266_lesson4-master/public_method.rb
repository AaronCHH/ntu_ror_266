# method 有三種不同的權限
# public 就是任何屬於這個 class 的物件都能使用

class Person 
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
  # greet 就是 public method
  def greet
    puts "hello, my name is #{self.name}"
  end
end

bob = Person.new("Bob", 30)
bob.greet

#可以在程式的任何地方被使用