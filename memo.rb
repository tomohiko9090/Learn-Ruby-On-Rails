# Ruby独特なやつをまとめてみる

puts "\nテスト1"
a = 3
puts a / 2 # 商を表す

puts "\nテスト2"
b = 1.5
puts b.class # 型の確認

puts "\nテスト3"
puts b.to_i # Numeric変換

# なんとシングルクォートとダブルクォートで挙動が違う
puts "\nテスト4"
puts "Ruby\nProgramming"
puts 'Ruby\nProgramming'

first_name = "朋彦"
last_name = "葛葉"
puts "my name is #{first_name} #{last_name}."
puts 'my name is #{first_name} #{last_name}.'

puts "\nテスト5"
c = "aaa"
puts c.upcase
puts c
puts c.upcase!
puts c

puts "\nテスト6"
puts 1 < 2
puts (1.0 + 2.0)/2.0

puts "\nテスト7"
puts 1 + "1".to_i # int型に変換
puts "ターミネーター" + 2.to_s # 文字列に変換

puts "\nテスト8"
n = 3
puts n += 1
puts n