execute if score #Temp Shotgun matches 1 run scoreboard players operation @s Shotgun = #Rand Number

execute unless score #Temp Team matches 1 run tag @s add SkillP
execute if score #Temp Team matches 1 run tag @s add SkillE
#Pier
scoreboard players operation @s Pier = #Temp Pier
#Fork
scoreboard players operation @s Fork = #Temp Fork
#Chai
scoreboard players operation @s Chai = #Temp Chai

#Dur
scoreboard players set @s Dur 30

#Rng
scoreboard players set @s Rng 100
#Rng_爆発時
scoreboard players operation @s RngIncP = #Temp Rng

#Spd
scoreboard players operation @s ProjSpd = #Temp ProjSpd

function skill:calc/act/apply/main

#dmg dmg=基礎dmg*dmg_multi/100
#scoreboard players set @s FiD 2000

tag @s remove New
