puts <<~TEXT
旅行プランを選択してください
1. 沖縄旅行（¥10,000）
2. 北海道旅行（¥20,000）
3. 九州旅行（¥15,000）
TEXT

print "プランを選択 > "
plan = gets.to_i

if plan == 1
  puts "沖縄旅行ですね、何人で行きますか？"
  price = 10000
elsif plan == 2
  puts "北海道旅行ですね、何人で行きますか？"
  price = 20000
elsif plan == 3
  puts "九州旅行ですね、何人で行きますか？"
  price = 15000
else
  puts "不正な入力です。"
end

if plan == 1 || plan == 2 || plan == 3
  print "人数を選択 > "
  count = gets.to_i

  if count >= 5
    puts "5人以上なので10%割引となります"
    pay = price * count
    puts "合計料金：¥#{(pay*0.9).to_i}"
  elsif count < 5 && count >0
    pay = price * count
    puts "合計料金：¥#{pay}"
  else
    puts "不正な入力です。"
  end
else
end

