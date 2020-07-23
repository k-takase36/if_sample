# 商品と値段をvegetablesへ代入
vegetables = [
  {name: "トマト", price: 100},
  {name: "にんじん", price: 200},
  {name: "かぼちゃ", price: 300},
  {name: "スイカ", price: 1000}
]

# 商品を表示する
puts "商品を選択してください"

vegetables.each.with_index(1) do|vegetable, i|
puts "#{i}. #{vegetable[:name]}¥#{vegetable[:price]}"
end

# 商品を選択する表示
while true 
  print "商品を選択 >"
  vegetable_product = gets.chomp.to_i
  break if(1..4).include?(vegetable_product)
    puts "不正な値です。1〜4の値を入力お願いします。"
end

selected_vegetable = vegetables[vegetable_product -1] 

puts "#{selected_vegetable[:name]}ですね、何個買いますか？"

# 個数を入力する表示
while true 
  print "個数を入力 >"
  vegetable_num = gets.chomp.to_i
  break if vegetable_num > 0
    puts "八百屋で野菜何も買わないで帰るんですか！笑。再度1以上を入力し購入お願いします！"
end

# 合計金額の表示（割引含む）
total_price = vegetable_num * selected_vegetable[:price]
discounted_total_price = (total_price * 0.8).round

if vegetable_num < 5
  puts "合計料金：¥#{total_price}"
else 
  puts "5個以上なので20%割引となります。"
  puts "合計料金：¥#{discounted_total_price}"
end