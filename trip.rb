puts <<~TEXT
旅行プランを選択してください
1. 沖縄旅行（¥10,000）
2. 北海道旅行（¥20,000）
3. 九州旅行（¥15,000）
TEXT

print "プランを選択 > "
plan = gets

if plan.to_i == 1
  puts "沖縄旅行ですね、何人で行きますか？"
  plan = 10000
elsif plan.to_i == 2
  puts "北海道旅行ですね、何人で行きますか？"
  plan = 20000
elsif plan.to_i == 3
  puts "九州旅行ですね、何人で行きますか？"
  plan = 15000
else
  puts "不正な入力です。"
end

print "人数を選択 > "
count = gets

if count.to_i >= 5
  puts "5人以上なので10%割引となります"
  pay = plan * count.to_i
  puts "合計料金：¥#{(pay*0.9).to_i}"
elsif count.to_i < 5 && count.to_i >0
  pay = plan * count.to_i
  puts "合計料金：¥#{pay}"
else
  puts "不正な入力です。"
end
