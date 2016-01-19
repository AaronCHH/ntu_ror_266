# 在 ruby 的 method 裡，其實在大部份的情況下不需要 return 關鍵字

def greater_than_five(operation)
  if operation >= 5
    true
  else
    false
  end
end

operation = 5 
puts greater_than_five(operation)
#印出 true

def area_of_circle(radius)
  radius_squared = radius ** 2
  area = radius_squared * 3.14
  # 重點是，ruby 會回傳最後一行被計算的結果
end

puts area_of_circle(10)
# 印出 314.0