# instance method(實例方法) 是只有被創造出來的物件才可使用
class Person
  def initialize(name, age)
    # instance variable 等同於在這個 class 的區域變數
    @name = name
    @age = age
  end

  # 宣告 instance methods，就像宣告一般的 method，只不過在 class 裡面
  def greet
    # instance variable 只可在 class 裡面被使用
    puts "Hello, my name is #{@name}"
  end
end

bob = Person.new("bob", 17)
bob.greet
# => Hello, my name is bob

# 若沒有先創出 Person 的instance (實例)，也就是先 new 一個 Person 的 object
# 使用 instance method 就會噴錯
Person.greet
# => instance_method.rb:22:in `<main>': 
# undefined method `greet' for Person:Class (NoMethodError)