# instance variable(實例變數) 是把資料綁定在 object 上的方法
# 只要被創出來的 object 還存在，instance variable 紀錄的資料也存在

class Person
  def initialize(name, age)
    # instance variable 前面一定要加 @
    @name = name
    @age = age
  end
end