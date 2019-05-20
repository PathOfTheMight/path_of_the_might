#Dur
scoreboard players set @s Dur 12
#Rng
scoreboard players operation @s RngIncP = #RadiusInc Number

function skill:calc/act/apply/main

tag @s remove New
