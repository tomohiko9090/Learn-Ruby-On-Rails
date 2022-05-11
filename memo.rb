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

puts "\nテスト12"
stone = "peridot"
if stone == "ruby"
  puts "July"
elsif stone == "peridot"
  puts "August"
elsif stone == "sapphire"
  puts "September"
else 
  puts "Not Found"
end

puts "\nテスト13"
stone = "ruby"
case stone
when "ruby"
  puts "July"
when "peridot"
    puts "August"
when "sapphire"
    puts "September"
else
  puts "Not Found"
end

puts "\nテスト14"
def hello_world
  puts "Hello, World!"
end

hello_world

puts "\nテスト15"
def add(x, y)
  x + y # 最後に評価されたものが戻り値になる
end

puts add(2, 5)

puts "\nテスト16"
def cry(animal)
  if animal == "cat"
    "meow"
  elsif animal >= "dog"
    "bowwow"
  elsif animal >= "cow"
    "moomoo"
  else
    "Not found."
  end
end

puts cry("cat")

puts "\nテスト17"
def fizz_buzz(x)
  if x % 15 == 0
    "Fizz"
  elsif x % 5 == 0
    "Buzz"
  elsif x % 3 == 0
    "FizzBuzz"
  else
    x.to_s
  end
end

puts fizz_buzz(3)
puts fizz_buzz(5)
puts fizz_buzz(15)

puts "\nテスト18"
print "改行されない出力"
p "そのまま戻り値となる → デバック用のメソッド"
pp "pメソッドより見やすくなる"

puts "\nテスト19"
e = [1, "a", [1, 2, 3]]
f = []
puts e
puts e.empty?
p f.empty?

puts "\nテスト20"
puts e.include?("a") # 含んでいるか調べる
p e.reverse # ひっくり返る
p e
p e.reverse! # 破壊的メソッド
p e

puts "\nテスト21"
p e.shuffle # 配列がシャッフルされる

puts "\nテスト22"
p (0..25).to_a # 0~25をarrayにして！という意味
p (0..25).to_a.shuffle!

puts "\nテスト23"
g = (0..10).to_a
p g << 20 # 配列のけつに挿入 
p g # しかも上は破壊的メソッド

puts "\nテスト24"
p g.push(30) # これもけつに挿入
p g # 同じく破壊的メソッド

puts "\nテスト25"
# pop shiftは逆
p g.pop
p g
p g.shift 
p g

puts "\nテスト26"
g << 3
p g
p g.uniq #重複なし
p g.uniq! #破壊的メソッド

puts "\nテスト27"
h = ["my", "name", "is", "kuzuba"]
p h.join 
p h.join(" ")
p h.join("_")

puts "\nテスト28"
p h.sort
p h.sort.reverse
p h.size #配列の数

puts "\nテスト29"
# ハッシュと辞書型のことをいうらしい
tomohiko = {"高校" => "勝高", "大学" => "広大", "大学院"  => "京大"}
p tomohiko
puts tomohiko["大学院"]

tomohiko["社会人"] = "リンモチ" #追加
p tomohiko
tomohiko["社会人"] = "サイバーエージェント" #変更
p tomohiko
tomohiko.delete("社会人") #削除
p tomohiko

puts "\nテスト30"
tomohiko = {"高校": "勝高", "大学": "広大", "大学院": "京大"} #シンボルの方が処理が速い
p tomohiko
tomohiko.delete(:"大学院")
p tomohiko

p tomohiko.keys
p tomohiko.values
p tomohiko.size

p tomohiko.has_key?(:"大学")
p tomohiko.has_key?(:"社会人")

puts "\nテスト31"
numbers = [1, 2, 3, 4, 5]

numbers.each do |number|
  puts number
end

numbers.each {|number|
  puts number
}

numbers.each {|number| puts number}

puts "\nテスト32"
# eachでかける時は、eachで書く
for number in numbers do
  puts number
end

puts "\nテスト33"
friends = {"tomo": 80, "minaho": 93, "seina": 84}
friends.each do |k, v|
  if 90 < v
    puts "#{k}, #{v}"
  end
end

puts "\nテスト34"
5.times do
  puts "hello!"
end

5.times do |i|
  puts "#{i}:Hello!"
end

5.times { |i|
  puts "#{i}:Hello!"
}

puts "\nテスト35"
i = 1
while i < 10 do
  puts i
  i += 1
end

puts "\nテスト36"
10.upto(14){ |n| puts n } # 10から14まで順番に増やしていく
10.downto(5){ |n| puts n } # 10から5まで順番に減らしていく

puts "\nテスト37"
# i = 0
# loop do 
#   puts i
#   i += 1
# end

# i = 0
# while true
#   puts i 
#   i += 1
# end

i = 0
loop do
  puts i 
  i += 1
  break if i ==10
end

puts "\nテスト38"
numbers = [1, 2, 3, 4, 5]
numbers.each do |number|
  if number % 2 == 1
    puts number
  end
end

puts "\nテスト39"
numbers = [1, 2, 3, 4, 5]
numbers.each do |number|
  # next if number % 2 == 0
  # next if number.even?
  next if number.odd?
  puts number
end