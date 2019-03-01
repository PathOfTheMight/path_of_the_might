scoreboard players set @s Rng 220
scoreboard players operation @s map = #Map Number
scoreboard players operation @s portal_id = #portal_id Number
scoreboard players operation @s ID = #ID Number
#帰還先idをポータルに保存
#act
execute if score @s map matches 21..36 run scoreboard players set @s map 1
execute if score @s map matches 37..50 run scoreboard players set @s map 2
#Map 
execute if score @s map matches 200..359 run scoreboard players set @s map 11

execute if score @s map matches 1 run scoreboard players set @s X0 -36896
execute if score @s map matches 1 run scoreboard players set @s Y0 51
execute if score @s map matches 1 run scoreboard players set @s Z0 -40999

execute if entity @s[tag=town_portal] run function skill:act/portal/town
execute if entity @s[tag=field_portal] run function map:portal/set_name/main

tag @s remove New
