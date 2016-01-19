favorite_book = nil
puts favorite_book

#如果 favorite book 還沒有被設值，那就把它設定成左邊的值
favorite_book ||= "麥田捕手"
puts favorite_book

# => 麥田捕手

# 若變數已經有值，就不會設定新的值給它
favorite_book ||= "1984"
puts favorite_book

# => 麥田捕手