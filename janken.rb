puts "じゃんけんしようぜ〜"
puts "じゃんけん..."

result = true

while result
  puts "グー = [0] / チョキ = [1] / パー = [2] / やらない = [3]"
  
  user_input = gets.to_i
  cpu_randum = rand(3)
  
  if user_input == 3
    puts "あいて:今回は見逃してやろう"
    return
  end
  
  hands = ["グー", "チョキ", "パー"]
  
  puts "あなた:#{hands[user_input]}"
  puts "あいて:#{hands[cpu_randum]}"
  
  if (user_input == 0 && cpu_randum == 1 ||
    user_input == 1 && cpu_randum == 2 ||
    user_input == 2 && cpu_randum == 0)
    pettern = "win"
    
  elsif user_input == cpu_randum
    puts "あいこで..."
    
  else
    pettern = "lose"
  end

  case pettern
  when "win"
    puts "じゃんけんはあなたの勝ちだ"
    puts "あなた:あっち向いて..."
    puts "あなたの指の方向"
    puts "上 = [0] / 下 = [1] / 左 = [2] / 右 = [3]"
   
    user_hand = gets.to_i
    cpu_randum_head = rand(4)
    
    hands_or_heads = ["上", "下", "左", "右"]
    
    puts "ほい！！！"
    puts "あなたの指の方向:#{hands_or_heads[user_hand]}"
    puts "あいての顔の方向:#{hands_or_heads[cpu_randum_head]}"
    
    if user_hand == cpu_randum_head
      puts "あなたの大勝利！！"
      return
      
    else
      puts "またじゃんけんから！"
      puts "じゃんけん..."
      pettern = 0
    end
    
  when "lose"
    puts "じゃんけんはあなたの負けだ"
    puts "あいて:あっち向いて..."
    puts "あなたの顔の方向"
    puts "上 = [0] / 下 = [1] / 左 = [2] / 右 = [3]"
    
    user_head = gets.to_i
    cpu_randum_hand = rand(4)
    
    hands_or_heads = ["上", "下", "左", "右"]
    
    puts "ほい！！！"
    puts "あなたの指の方向:#{hands_or_heads[user_head]}"
    puts "あいての顔の方向:#{hands_or_heads[cpu_randum_hand]}"
    
    if user_head == cpu_randum_hand
      puts "あなたの敗北..."
      return
    else
      puts "またじゃんけんから！"
      puts "じゃんけん..."
      pettern = 0
    end
    
  end
end