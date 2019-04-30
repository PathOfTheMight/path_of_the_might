#マナ自然回復
scoreboard players operation @s Mp += @s MpRgn
scoreboard players operation @s Mp < @s NonRsrMp

#マナ割合の計算・表示
scoreboard players operation #Mp Number = @s Mp
scoreboard players operation #Mp Number *= #20 Number
scoreboard players operation #Mp Number /= @s MaxMp
execute unless score #Mp Number = @s MpRatio store result entity @s Inventory[{Slot:-106b}].tag.CustomModelData int 1 run scoreboard players get #Mp Number
scoreboard players operation @s MpRatio = #Mp Number
