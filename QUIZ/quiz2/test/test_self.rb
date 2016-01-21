class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def greet
    puts "Hello, my name is #{self.name}"
  end
  # 用這個 method 把 self 印出來
  def who_am_i
    puts self
  end
end

bob = Person.new("bob", 17)
bob.who_am_i
