execute if score #Team Number matches 1 run tag @s add SkillP
execute if score #Team Number matches 2 run tag @s add SkillE

#Dur
scoreboard players set @s[tag=ShockNova1] Dur 15
scoreboard players set @s[tag=ShockNova2] Dur 12
#Rng
scoreboard players operation @s[tag=ShockNova1] Rng = #RngIncP Number
scoreboard players operation @s RngIncP = #RngIncP Number

scoreboard players operation @s[tag=ShockNova1] Rng *= #7 Number
scoreboard players operation @s[tag=ShockNova1] RngIncP *= #5 Number
scoreboard players operation @s[tag=ShockNova2] RngIncP *= #8 Number
#dmg dmg=基礎dmg*dmg_multi/100
scoreboard players set @s[tag=ShockNova1] LnD 1000
scoreboard players set @s[tag=ShockNova2] LnD 2000

tag @s remove New
