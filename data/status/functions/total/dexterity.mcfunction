#Dex
scoreboard players operation @s Dex = @s BDex
scoreboard players operation @s Dex += @s PDex
scoreboard players operation @s Dex += @s EDex
#DexIncP
scoreboard players operation #DexIncP Number = @s PDexIncP
scoreboard players operation #DexIncP Number += @s EDexIncP
scoreboard players operation #DexIncP Number += #100 Number
scoreboard players operation @s Dex *= #DexIncP Number
scoreboard players operation @s Dex /= #100 Number
