#ライフ自然回復
scoreboard players operation @s Hp += @s HpRgn
scoreboard players operation @s Hp < @s MaxHp

#ライフ割合の計算・表示
scoreboard players operation #Hp Number = @s Hp
scoreboard players operation #Hp Number *= #20 Number
scoreboard players operation #Hp Number /= @s MaxHp
scoreboard players remove #Hp Number 20
execute unless score #Hp Number = @s HpRatio run function status:tick/player/life_ratio
