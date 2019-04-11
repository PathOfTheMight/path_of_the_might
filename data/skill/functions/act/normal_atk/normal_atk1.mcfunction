scoreboard players operation @s Number = #Rand Number

execute if score #group Number matches 1 run tag @s add magic_p
execute if score #group Number matches 2 run tag @s add magic_e

#scoreboard players operation @s Pier = #Pier Number
scoreboard players operation @s Pier = #Pier Number

#Dur
scoreboard players operation @s Dur = #Dur Number

#weapon_effect
execute if score #weapon_effect Number matches 1 run tag @s add crash
execute if score #weapon_effect Number matches 2 run tag @s add slash
execute if score #weapon_effect Number matches 3 run tag @s add blood

#AoE
scoreboard players operation @s Rng = #AoE Number

#speed speed(*100block/Tick)=基礎speed*speed(_multi)/100
#scoreboard players set @s ProjSpd 50
#scoreboard players operation @s ProjSpd *= #speed Number
#scoreboard players operation @s ProjSpd /= #100 Number

#dmg dmg=基礎dmg*dmg_multi/100
scoreboard players set @s PhD 3000

tag @s remove New
