# 假設我是要寫入或更改 @name
# 不能直接使用 bob.name = "Bob"
class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def greet
    puts "Hello, my name is #{@name}"
  end
  # 讀取資料方法，稱為 getter method
  def get_name
    @name
  end
  # 寫入/更改方法，稱為 setter method
  def set_name=(name)
    @name = name
  end
end

bob = Person.new("bob", 17)
bob.set_name = "Bob"
puts bob.get_name
# => Bob