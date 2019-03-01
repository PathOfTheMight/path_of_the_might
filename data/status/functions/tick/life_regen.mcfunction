#ライフ自然回復
scoreboard players operation @s HpH += @s HpRgnH
scoreboard players operation @s HpH < @s MaxHpH

#ライフ割合の計算・表示
scoreboard players operation #HpH Number = @s HpH
scoreboard players operation #HpH Number *= #20 Number
scoreboard players operation #HpH Number /= @s MaxHpH
execute unless score #HpH Number = @s Hp_ratio run function status:life_ratio

effect give @s minecraft:instant_health 1 6 true
execute if score @s Hp_ratio matches 0 run effect give @s minecraft:poison 1 0 true
