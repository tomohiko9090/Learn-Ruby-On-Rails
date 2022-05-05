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
n += 1
puts n

# or and は優先順位が引くい。&& || とは混ぜない方が無難
puts "\nテスト8"
d = true
e = false
puts d && e 
puts d || e # どっちかがTrueならTrueになる

puts "\nテスト9"
puts !d # 逆になる
puts not(d)

puts "\nテスト10"
puts !d || true # 前半の判定が先
puts true or true and false # 優先順位が一緒だから前半で判定
\
puts "\nテスト10"
score = 50
if score >= 90
  puts "A"
elsif score >= 80
  puts "B"
elsif score >= 60
  puts "C"
else
  puts "D"
end

puts "\nテスト10"
animal = "cat"
if animal == "cat"
  puts "meow"
elsif animal >= "dog"
  puts "bowwow"
elsif animal >= "cow"
  puts "moomoo"
else
  puts "Not found."
end

puts "\nテスト10"
# 上から実行することを生かしてる。。。
age = 5
if 12 <= age
  puts "入場料は5000円"
elsif 6 <= age
  puts "入場料は2500円"
else
  puts "入場料は1000円"
end

# 0でない時は"Not zero."
puts "\nテスト11"
n = 0
puts n.zero?
unless n.zero?
  puts "Not zero."
else 
  puts "This is zero."
end