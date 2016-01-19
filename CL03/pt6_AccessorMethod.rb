# 假設我只想印出 bob 的歲數，我需要讀取 @name
class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def greet
    puts "Hello, my name is #{@name}"
  end
end

bob = Person.new("bob", 17)
bob.name
# => accessor_method.rb:14:in `<main>': 
#undefined method `name' for #<Person:0x007facfa838188 @name="bob", @age=17> (NoMethodError)