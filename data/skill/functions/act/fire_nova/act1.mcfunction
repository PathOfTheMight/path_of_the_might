execute if score #Team Number matches 1 run tag @s add SkillP
execute if score #Team Number matches 2 run tag @s add SkillE

#Dur
scoreboard players set @s Dur 12
#Rng
scoreboard players operation @s Rng = #Rng Number
scoreboard players operation @s RngIncP = #RadiusInc Number

#dmg dmg=基礎dmg*dmg_multi/100
scoreboard players set @s FiD 5000

tag @s remove New
