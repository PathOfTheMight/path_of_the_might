execute if score #Team Number matches 1 run tag @s add SkillP
execute if score #Team Number matches 2 run tag @s add SkillE

#LnD 引き継ぎ
scoreboard players operation @s LnD = #LnD Number
#Rng 引き継ぎ
scoreboard players operation @s Rng = #Rng Number

scoreboard players set @s Dur 30
tag @s remove New
