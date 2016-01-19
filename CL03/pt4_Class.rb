# 為了取值，必須要寫一個 method 叫物件回傳 @name

class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def greet
    puts "Hello, my name is #{@name}"
  end
  # 定義 get_name
  def get_name
    @name
  end
end

bob = Person.new("bob", 17)
puts bob.get_name
# => bob