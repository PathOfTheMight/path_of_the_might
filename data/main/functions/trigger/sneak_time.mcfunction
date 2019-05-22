#スニーク時

#Drop
execute unless score @s[tag=Drop] WaitTimeH matches 1.. run data modify block -40691 1 -40700 RecordItem set from entity @s EnderItems[0]
#Swap
execute unless score @s[tag=!Drop,tag=Swap] WaitTimeH matches 1.. run data modify block -40691 1 -40700 RecordItem set from entity @s EnderItems[1]
#Sneak
execute unless score @s[tag=!Drop,tag=!Swap] WaitTimeH matches 1.. run data modify block -40691 1 -40700 RecordItem set from entity @s SelectedItem
#未所持
execute unless score @s[tag=!Drop,tag=!Swap] WaitTimeH matches 1.. unless data entity @s SelectedItem run data remove block -40691 1 -40700 RecordItem.tag
execute unless score @s WaitTimeH matches 1.. run function skill:calc/act/main

scoreboard players reset @s SneakTime
