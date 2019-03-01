execute if score #Shotgun Number matches 1 run scoreboard players operation @s Shotgun = #Rand Number

execute if score #Team Number matches 1 run tag @s add SkillP
execute if score #Team Number matches 2 run tag @s add SkillE
#Pier
scoreboard players operation @s Pier = #Pier Number
#Fork
scoreboard players operation @s Fork = #Fork Number
#Chai
scoreboard players operation @s Chai = #Chai Number

#Dur
scoreboard players set @s Dur 80

#Rng
scoreboard players set @s Rng 100
#Rng_爆発時
scoreboard players operation @s RngIncP = #Rng Number

#Spd
scoreboard players operation @s SProjSpd = #SProjSpd Number

#dmg dmg=基礎dmg*dmg_multi/100
scoreboard players set @s FiD 2000

tag @s remove New
