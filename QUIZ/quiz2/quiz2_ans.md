1. 請用簡單的方式敘述以下每一行程式碼：<br>

  ```ruby 
  a = 1 
  @a = 2
  @@a = 5
  user = User.new
  user.name
  user.name = "Joe"
  ```
  #### Ans:
  ```ruby 
  a = 1             # 儲存1至區域變數a
  @a = 2            # 儲存1至實體變數a
  @@a = 5           # 儲存1至類別變數a
  user = User.new   # 實作類別為物件
  user.name         # 取用物件變數name
  user.name = "Joe" # 儲存字串"Joe"至物件變數name
  ```
2. 什麼是 module? 請寫一段程式碼說明一個 class 要如何使用一個 module 裡面的 method?
<br>
 #### Ans:<br>
  ```
  module為存放程式碼的區塊，使用時使用include關鍵字。
  ```
3. 請說明 class variable 和 instance variable 之間的差別
<br>
  #### Ans:
  ```
  instance variable(實例變數) 是綁定在 object 的資料
  class variable(類別變數) 是綁定 class 本身的資料
  ```
4. 請說明 class method 和 instance method 之間的差別
<br>
  #### Ans:
  ```
  instance method 需要由物件呼叫;
  class method 使用時不須經由物件。
  ```
5. 如果今天我為一個叫 User 的 class 產生一個新物件的方式是:
  ```ruby
  User.new("Bob", "male", "Engineer")
  ```
請寫出 User class 的 initialize method
<br>
  #### Ans:
  ```
  class User
    def initialize(name, gender, job)
      @name = name
      @gender = age
      @job = job
    end
  end
  ```
6. 在：
  A.  一個 class 裡，method 外面
  B.  一個 class 裡，instance method 裡
  self 分別是指向什麼?
  <br>
  #### Ans:
  ```
  A. 指向物件(實體)本身;
  B. 指向物件(實體)變數。
  ```
7. attr_accessor 的功能是什麼，它和 attr_reader、attr_writer 之間的差別是什麼？
<br>
  #### Ans:
  ```
  attr_accessor 是類別的屬性存取器，
  attr_reader 是寫入器(屬性唯寫)，
  attr_writer 是閱讀器(屬性唯讀)。
  ```
8. 請說明 public 和 private method 之間的不同
<br>
  #### Ans:
  ```
  public moethod 可供繼承之類別使用，private method 則不行。
  ```
9. 請說明 Inheritance 和 Module 之間的差別，它們分別是用於哪些情況？ 請舉例說明
<br>
  #### Ans:
  ```
  Inheritance: 透過繼承，子類別可使用父類別之變數及方法；
  Module 被任一類別 include 後，均可使用其中之變數及方法。 
  ```
10. 若今天有一個 class 有 include 一個 module，他的 parent class 和 sub class 是否可以使用該 module 裡的 method?
<br>
  #### Ans:
  ```
  parent class 不可，sub class 可。
  ```
11. 請間單說明什麼是 Relational Database，什麼是 SQL
<br>
  #### Ans:
  ```
  Relational Database:
    由多個相互關係的正規化關聯（表格）所組成。
    關聯（表格）之間是透過相同的欄位值（即外鍵FK ;Foreign Key）來連繫。
  SQL:
  Structured Query Language (結構化查詢語言)，用以查詢，管理資料庫資料之程式語言。
  ```