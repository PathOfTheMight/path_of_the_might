#スニーク時

#Drop
execute unless score @s[tag=Drop] WaitTimeH matches 1.. run data modify entity 00000000-0000-0000-0000-000000000000 ArmorItems[3] set from entity @s EnderItems[0]
#Swap
execute unless score @s[tag=!Drop,tag=Swap] WaitTimeH matches 1.. run data modify entity 00000000-0000-0000-0000-000000000000 ArmorItems[3] set from entity @s EnderItems[1]
#Sneak
execute unless score @s[tag=!Drop,tag=!Swap] WaitTimeH matches 1.. run data modify entity 00000000-0000-0000-0000-000000000000 ArmorItems[3] set from entity @s SelectedItem
#未所持
execute unless score @s[tag=!Drop,tag=!Swap] WaitTimeH matches 1.. unless data entity @s SelectedItem store result entity 00000000-0000-0000-0000-000000000000 ArmorItems[3].Count byte 1 run scoreboard players get #0 Number
execute unless score @s WaitTimeH matches 1.. run function skill:calc/act/main

scoreboard players reset @s SneakTime
