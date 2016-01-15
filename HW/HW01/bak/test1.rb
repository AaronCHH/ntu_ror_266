# begin...end while 和 loop do 一樣，主要是用於一些我不知道起始值的狀況

begin #告訴電腦先執行以下程式碼，而不是先判斷

  puts "輸入 5 才能退出喔" #讓電腦印出問題
  input2 = gets.chomp.to_i #讀取使用者的輸入，用 to_i 轉成整數 

end while input2 != 5 #判斷式寫在最下面，只要 input2 不等於 5，我就回到上面繼續執行