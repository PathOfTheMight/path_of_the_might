execute if score #Team Number matches 1 run tag @s add SkillP0
execute if score #Team Number matches 2 run tag @s add SkillE0

#LnD 引き継ぎ
scoreboard players operation @s LnD = #LnD Number
#Rng 引き継ぎ
scoreboard players operation @s Rng = #Rng Number
scoreboard players operation @s Radius = #Rng Number
#Dur 引き継ぎ
scoreboard players operation @s Dur = #Dur Number

tag @s remove New
