class Person
  attr_accessor :name, :age

  #今天我要是在class裡，instance methods 外看 self
  puts self

  def Person.info 
  end

  def initialize(name, age)
    @name = name
    @age = age
  end

  def greet
    puts "Hello, my name is #{self.name}"
  end
end

# => Person
# 所以在 class 裡面，instance method 外面，self 是指 class 自己
# 在在 class 裡面，instance method 裡面，self 是指被創出的某 object 