execute if score #Team Number matches 1 run tag @s add SkillP
execute if score #Team Number matches 2 run tag @s add SkillE

#Dur
scoreboard players set @s Dur 3

#AoE
scoreboard players operation @s Rng = #AoE Number

#accu
scoreboard players operation @s accu = #accu Number

#dmg dmg=基礎dmg*dmg_multi/100
scoreboard players set @s PhD 1500

tag @s remove New
