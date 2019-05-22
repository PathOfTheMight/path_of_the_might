#Dur
scoreboard players set @s Dur 50

#Rng_爆発時
scoreboard players operation @s RngIncP = #Temp Rng

function skill:calc/act/apply/main

#Rng
scoreboard players set @s Rng 50

tag @s remove New
