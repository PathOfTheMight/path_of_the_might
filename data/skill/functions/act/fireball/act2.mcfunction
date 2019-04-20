#execute if score #Temp Shotgun matches 1 run scoreboard players operation @s Shotgun = #Rand Number

execute unless score #Temp Number matches 1 run tag @s add SkillP
execute if score #Temp Number matches 1 run tag @s add SkillE

#Dur
scoreboard players set @s Dur 50

#Rng_爆発時
scoreboard players operation @s RngIncP = #Temp Rng

#Spd
scoreboard players operation @s ProjSpd = #Temp ProjSpd

function skill:calc/act/apply/main

#Rng
scoreboard players set @s Rng 100

tag @s remove New
