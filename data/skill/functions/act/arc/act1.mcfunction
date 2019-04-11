tp @s ^ ^0.5 ^0.5 ~ ~
#Team
execute if score #Team Number matches 1 run tag @s add SkillP
execute if score #Team Number matches 2 run tag @s add SkillE
#Pier
scoreboard players set @s Pier -1
#Fork
scoreboard players set @s Fork 0
#Chai
scoreboard players operation @s Chai = #Chai Number
#Dur
scoreboard players set @s Dur 20
#Rng
scoreboard players set @s Rng 220
#ProjSpd
scoreboard players set @s ProjSpd 150

#dmg dmg=基礎dmg*dmg_multi/100
scoreboard players set @s LnD 3500

tag @s remove New
