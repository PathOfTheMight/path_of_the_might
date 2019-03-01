execute if score #Team Number matches 1 run tag @s add SkillP0
execute if score #Team Number matches 2 run tag @s add SkillE0

#LnD 引き継ぎ
scoreboard players operation @s LnD = #LnD Number
#AoE 引き継ぎ
scoreboard players operation @s Rng = #AoE Number
#Dur 引き継ぎ
scoreboard players operation @s Dur = #Dur Number

tag @s remove New
