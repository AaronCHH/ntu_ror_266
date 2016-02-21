1. 請解釋 database.yml, routes.rb, 和 Gemifle 分別是什麼？ 他們分別在一個 Rails 專案裡的什麼位置？ 他們為什麼對一個 Rails 專案如此重要? 
	## Ans.
	```
	database.yml: 
    Rails 專案與 database 連結的設定檔
    development 是用於開發時的設定
    test 是用於執行自動測試時的設定
    production 是用於正式環境上的設定

	routes.rb:
    設定 URL 的檔案
    設定一個 Rails 專案 API (應用程序介面) 

	Gemifle:
    宣告在這個 Rails 專案中使用的 gem ( Ruby 套件)
    bundler 會依據 gemfile 安裝該專案需要的套件
	```

2. MVC 架構裡的 M, V, 和 C 分別代表什麼？
  ## Ans.
  ```
    Model:封裝資料與商業邏輯，與資料庫裡的資料表對應
    View:使用者介面，顯示及編輯表單，可內嵌Ruby語法
    Controller:負責將資料送進送出Model，處理從外界(也就是瀏覽器)來的HTTP Request請求，與Model互動後輸出View(也就是HTML) 
  ```

3. 請解釋 CRUD 是哪四個字的縮寫？
  ## Ans.  
  ```
	CREATE - 新增資料
  READ - 讀取資料
  UPDATE - 編輯資料
  DELETE - 刪除資料
  ```

4. 請問在 routes.rb 裡面加入以下程式碼會產生出哪一些 url？ (提示：在 browser 輸入```http://localhost:3000/rails/info/routes```)
  ```ruby
	resources :users
	```
  ## Ans.        
  ```      
  users/index
  users/create
  users/new
  users/edit
  users/show
  users/update
  users/destroy    
  ```   
5. 請解釋 model 檔案 和 migration 檔案的差別
  ## Ans.
	```      
  migration 檔案，不必用 SQL 語法，直接用 ruby 語法即可在資料庫裡修改 schema;  
  model 檔案, 用以決定資料間關連性(一對多，多對一或多對多)之設定檔，一個 model 檔是對映到一個資料庫裡的資料表。
	```        

6. 若今天發現一個 migration 檔寫錯，請問我應該用什麼指令回復到上一個版本的 migration? 
  ## Ans.
	```      
  rake db:rollback
	```

7. 假設今天
	* 我要在資料庫裡產出一個叫 group 的資料表
	* 裡面包括的欄位名稱和相對應的資料型別是： 
		**name (string)**,
		**description (text)**,
		**members (integer)**
				
	* 請寫出一個能產生出以上需求的 migration 檔  
	---
	## Ans.
	```ruby
	class AddGroupsTable < ActiveRecord::Migration
		def change
			create_table :groups do |t|
			t.string  :name
			t.text    :description
			t.integer :members

			t.timestamps
			end
		end
	end
	```    

8. 請解釋什麼是 ActiveRecord? 
  ## Ans.
	```    
	每一個 model 檔是繼承於 Active Record 的 class  
	Active Record 的衍生類別 (model檔) 例用慣例決定應該對應到哪些資料庫中的表。
	此慣例即將類別名稱轉成複數名詞。
	```
    
9. 若今天需要為 ```Project``` 和 ```Issue``` 這兩個 Model 建立一對多的關係，請寫出實作上所需要的 migratiion 和 model 檔案
	## Ans.
	### migration files    
  ```ruby
	# add_projects.rb
	class AddProjects < ActiveRecord::Migration
		def change
			create_table :projects do |t|
			t.string :name            

			t.timestamps
			end
		end
	end
	``` 
	```ruby
	# add_issues.rb
	class AddIssues < ActiveRecord::Migration
		def change
			create_table :issues do |t|
			t.string :contents            

			t.timestamps
			end
		end
	end
  ```
	### model files
	```ruby
	# project.rb
	class Project < ActiveRecord::Base
		has_many :issues  
	end
	```
	```ruby
	# post.rb
	class Post < ActiveRecord::Base        
		belongs_to:project
	end
  ```    

10. 若今天我有以下 model 檔：
	```ruby
	class User < ActiveRecord::Base
		has_many :groups_users
		has_many :groups, through: :groups_users 
	end
	```
	請寫出和這個 model 檔相關連的 model 檔，以及這些 model 檔所需要的資料庫欄位
	### Ans.  
	### model files    
	```ruby
	# group.rb
	class Group < ActiveRecord::Base        
			belongs_to:user
	end
	```
	```ruby
	# group_user.rb
	class GroupsUser < ActiveRecord::Base        
			belongs_to:user
	end
	```    
	### migration files    
	```ruby
	# add_groups.rb
	class AddUsers < ActiveRecord::Migration
		def change
			create_table :groups do |t|
			t.string :groupname
			t.string :groupid
			t.string :description            

			t.timestamps
			end
		end
	end
	```    
	```ruby
	# add_groups_users.rb
	class AddGroupsUsers < ActiveRecord::Migration
		def change
			create_table :groups_users do |t|
			t.string :groupid
			t.string :userid            

			t.timestamps
			end
		end
	end
	```

11. 延續第10題，如果需要讓一個叫 "Bob" 的使用者產生一個名字叫做 "Rails is Fun" 的社團，應該如何在 rails console 裡實作出來？
	## Ans.    
	```ruby
	User.create(groupname:"Rails is Fun", groupid="1", description="this groups is for...")
	```

12. 延續第11題，請寫一段程式碼確保使用者在建立新社團時社團名不可以是空白，而且不能超過50個字
	## Ans.  
	```ruby
	# group.rb
	class Group < ActiveRecord::Base        
		belongs_to:user
		
		validates :groupname, length: { maximum: 50 }
		validates :groupname, presence: true;
	end
	```