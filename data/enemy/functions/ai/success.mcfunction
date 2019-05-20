scoreboard players operation @s WaitTimeH = #WaitTimeH Number
effect give @s minecraft:slowness 1 5 true
execute store result entity @s ActiveEffects[{Id:2b}].Duration int 0.01 run scoreboard players get #WaitTimeH Number
data modify entity @s ArmorItems[0].tag.AI append from entity @s ArmorItems[0].tag.AI[0]
data remove entity @s ArmorItems[0].tag.AI[0]
