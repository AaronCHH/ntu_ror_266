# self 可用於：
# 1. 在 class 裡呼叫 setter / getter / instance methods
# 2. 宣告 class method 時
# 但是 self 本身是什麼？
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
# <Person:0x007ff1ba087dd0>  self 在 instance method 裡
# 是指呼叫 instance method 的 object
# 所以在 instance method 裡面 self.age = bob.age