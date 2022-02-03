
require "csv"
 
    puts "1(新規でメモを作成) 2(既存のメモ編集する)"
    memo_type = gets.to_i
 
 if memo_type == 1
    puts "新規でメモ作成"
    puts "拡張子を除いたファイルを入力してください"   
    memo_name = gets.chomp
    puts "メモしたい内容を記入してください" 
    puts "完了したらCtrl＋Dをおします"
    memo_content = readlines.map &:chomp
    
    CSV.open("#{memo_name}.csv", "w") do |csv|
     csv << ["#{memo_content}"]
    end

 elsif memo_type == 2
    puts "変更するファイル（拡張子除く）を入力してください"   
    memo_name = gets.chomp
    puts "追記したい内容を記入してください" 
    puts "完了したらCtrl＋Dをおします"
    memo_content = readlines.map &:chomp
    
    CSV.open("#{memo_name}.csv", "a") do |csv|
    csv << ["#{memo_content}"]
    end
 
 else
    puts "最初からやり直してください" 
    exit
 end

