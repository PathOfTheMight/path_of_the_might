#Dur
scoreboard players set @s[tag=ShockNova1] Dur 15
scoreboard players set @s[tag=ShockNova2] Dur 12

function skill:calc/act/apply/main

#Radius
scoreboard players operation @s Radius = @s Rng
scoreboard players operation @s Radius *= #4 Number
#RngMin
scoreboard players operation @s[tag=ShockNova1] RngMin = @s Rng
scoreboard players operation @s[tag=ShockNova1] RngMin *= #3 Number
#Rng
scoreboard players operation @s[tag=ShockNova1] Rng *= #5 Number
scoreboard players operation @s[tag=ShockNova2] Rng *= #7 Number
#リングのダメージ半減
scoreboard players operation @s[tag=ShockNova1] PhD /= #2 Number
scoreboard players operation @s[tag=ShockNova1] FiD /= #2 Number
scoreboard players operation @s[tag=ShockNova1] CoD /= #2 Number
scoreboard players operation @s[tag=ShockNova1] LnD /= #2 Number
scoreboard players operation @s[tag=ShockNova1] ChD /= #2 Number

tag @s remove New
