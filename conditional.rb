# 勇者のhp
brave_hp = 30
# 勇者の攻撃力
brave_attack = 10
# 勇者の防御力
brave_defense = 5
# 敵のhp
enemy_hp = 30
# 敵の攻撃力
enemy_attack = 5
# 敵の防御力
enemy_defense = 10

# 敵に与えるダメージの計算
enemy_damage = brave_attack - enemy_defense

# 敵のHPにダメージを与える
enemy_hp = enemy_hp - enemy_damage

# 敵に与えるダメージと残りHPの表示
puts "敵に#{enemy_damage}のダメージを与えた！"
puts "残りHPは#{enemy_hp}だ！"

# 残りHPによってリアクションを変える
if enemy_hp > 20
  puts "敵は元気だ"
elsif enemy_hp > 10
  puts "敵はちょっと弱っている"
elsif enemy_hp > 5
  puts "敵はかなり弱っている"
elsif enemy_hp > 0
  puts "敵は瀕死だ"
else
  puts "敵は死んだ"
end

# 勇者が受けるダメージの計算
brave_damage = enemy_attack - brave_defense

# 勇者が受けるHPの計算
brave_hp = brave_hp - brave_damage

# 勇者が受けるダメージと残りのHPの表示
puts "敵から#{brave_damage}のダメージを受けた！"
puts "残りのHPは#{brave_hp}だ！"

if brave_hp > 20
  puts "勇者は元気だ"
elsif brave_hp > 10
  puts "勇者はちょっと弱っている"
elsif brave_hp > 5
  puts "勇者はかなり弱っている"
elsif brave_hp > 0
  puts "勇者は瀕死だ"
else
  puts "勇者は死んだ"
end
