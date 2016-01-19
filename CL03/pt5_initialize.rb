class Person
  # 每一個 person 物件在創出時會被呼叫到
  # 正式名稱是 constructor (建構式)
  def initialize
    puts "This object was initialized!"
  end
end

bob = Person.new     
# => "This object was initialized!"