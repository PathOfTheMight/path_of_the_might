#リスポーン
gamemode adventure @s
tag @s remove Dead
tag @s add Player
title @s clear
#街にtp
tp @s ~ ~3 ~

scoreboard players set @s WaitTimeH 2000
scoreboard players operation @s Hp = @s MaxHp
scoreboard players operation @s Mp = @s MaxMp
scoreboard players operation @s Es = @s MaxEs

effect give @s minecraft:regeneration 1000000 3 true
effect give @s minecraft:resistance 1000000 4 true
effect give @s minecraft:saturation 1000000 0 true
effect give @s minecraft:speed 1000000 2 true
