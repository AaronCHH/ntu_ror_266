# Skip to content
# This repository
# Search
# Pull requests
# Issues
# Gist
#  @AaronCHH
#  Unwatch 1
#   Star 0
#   Fork 3 AaronCHH/lesson2
# forked from yuyueugene84/lesson2
#  Code  Pull requests 0  Wiki  Pulse  Graphs  Settings
# Branch: master Find file Copy pathlesson2/homework1.rb
# b1bf80c  on 17 Nov 2015
# @yuyueugene84 yuyueugene84 renamed homework1
# 1 contributor
# RawBlameHistory     36 lines (24 sloc)  944 Bytes
# homework1
# 剪刀石頭布
# 先要使用者輸入剪刀石頭或布的其中一個選項
# 接下來讓電腦亂數選出一個選項
# 比較兩個選項，決定誰贏誰輸
# 輸出結果
# 問使用者是否再玩一次

begin #可以美化輸出
  puts "|===============================================|"
  puts "|Welcome to Rock Paper Scissors!!!              |"
  puts "|===============================================|"

  begin
    puts "please choose one of the following: R / P / S"
    user_input = gets.chomp.upcase
  end while !["R", "P", "S"].include?(user_input)

  #接下來請把剩下的部份寫出來...


  puts "Hello World"



  #問使用者是否還要再玩
  begin
    puts "Play Again?: Y / N"
    continue = gets.chomp.upcase
  end while !["Y", "N"].include?(continue)

end whlie continue == "N"
# 若使用者回答 "N"，印出離開的訊息，不是就回到迴圈的上層繼續玩
puts "Good Bye! Thanks for playing!"

# Status API Training Shop Blog About Pricing
# © 2016 GitHub, Inc. Terms Privacy Security Contact Help
