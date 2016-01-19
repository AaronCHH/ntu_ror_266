# 現在我們知道用 attr_accessor，Ruby 會自動把 getter 
# 和 setter method 產生出來
class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def greet
    puts "Hello, my name is #{name}"
  end
  # 但假設說我需要在 class 裡面其他的 instance method 裡
  # 呼叫 getter 和 setter method
  def change_info(n, a)
    # 希望能像在使用 setter method 一樣， bob.name = "Boob"
    name = n
    age = a
  end
end

bob = Person.new("bob", 17)
bob.change_info("Bob", 30)

puts bob.name
# => bob
puts bob.age
# => 17
# 但是 bob 的資料卻沒變，為什麼？ 
# ruby 以為我們在 change_info 裡的 name 和 age 是指變數而不是 getter methods