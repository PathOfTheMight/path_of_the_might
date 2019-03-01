#マナ自然回復
scoreboard players operation @s MpH += @s MpRgnH
scoreboard players operation @s MpH < @s NonRsrMpH

#マナ割合の計算・表示
scoreboard players operation #MpH Number = @s MpH
scoreboard players operation #MpH Number *= #20 Number
scoreboard players operation #MpH Number /= @s MaxMpH
execute unless score #MpH Number = @s Mp_ratio run function status:mana_ratio
