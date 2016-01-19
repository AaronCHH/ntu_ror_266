# 當然每次寫 getter 和 setter method 很麻煩，所以聰明的 ruby 就有了 attr_accessor 方法
class Person
  # 在 attr_accessor 關鍵字後方加上 instance method 的 symbol
  # 自動幫使用者把 getter 和 setter method 寫好
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def greet
    puts "Hello, my name is #{@name}"
  end
end

bob = Person.new("bob", 17)
bob.name = "Bob"
bob.age = 30
puts bob.name
puts bob.age
# => Bob
# => 30