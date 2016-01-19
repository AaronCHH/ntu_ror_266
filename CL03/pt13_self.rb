class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def greet
    puts "Hello, my name is #{self.name}"
  end
  # 為了確保 ruby 知道我們是要使用 Person 的 getter 和 setter method
  # 需要 self 這個關鍵字
  def change_info(n, a)
    self.name = n
    self.age = a
  end

  def print_info(name, age)
    self.change_info(name, age)
    puts self.name 
    puts self.age
  end
end

bob = Person.new("bob", 17)
bob.change_info("Bob", 30)
puts bob.name
# => Bob
puts bob.age
# => 30