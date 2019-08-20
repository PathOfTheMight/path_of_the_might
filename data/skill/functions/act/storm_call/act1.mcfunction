function skill:calc/act/apply/main

#Radius
scoreboard players operation @s Radius = @s Rng
scoreboard players reset @s Rng

tag @s remove New
