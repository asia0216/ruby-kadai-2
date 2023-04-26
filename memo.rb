require "csv"

puts "1 → 新規でメモを作成する / 2 → 既存のメモに追記する / 3 → 既存のメモの確認"

memo_type = gets.to_i

if memo_type == 1
  puts "メモの名前は？(拡張子無し)"
  puts "(注)存在するファイルの名前を入力すると上書きされます"
  memo_name = gets.to_s.chomp
  puts "メモの内容は？"
  puts "終了時は control + D キー"
  File.write("#{memo_name}.csv", "#{$stdin.read}")
  
elsif memo_type == 2
  puts "編集したいメモの名前は？(拡張子無し)"
  puts "(備考)存在しないファイルの名前を入力すると新規作成されます"
  memo_name = gets.to_s.chomp
  puts "追加したいメモの内容は？"
  puts "終了時は control + D キー"
  File.open("#{memo_name}.csv", "a") do |memo|
    memo << $stdin.read
  end
  
elsif memo_type == 3
  puts "確認したいメモの名前は？(拡張子無し)"
  memo_name = gets.to_s.chomp
  begin
    puts CSV.read("#{memo_name}.csv")
  rescue
    puts "#{memo_name}は存在しないメモです"
  end
end