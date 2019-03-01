execute if entity @s[y_rotation=0..90] run summon minecraft:armor_stand ^ ^1 ^0.5 {Tags:[Skill,Spell,Single,IceSpear,Unslide,New,NewMult],Rotation:[45f,0f],ArmorItems:[{},{},{},{id:"minecraft:cyan_dye",Count:1b}],Invisible:1b,Silent:1b,Small:1b,ActiveEffects:[{Id:28b,Amplifier:0b,Duration:200000000,ShowParticles:0b}]}
execute if entity @s[y_rotation=90.001..180] run summon minecraft:armor_stand ^ ^1 ^0.5 {Tags:[Skill,Spell,Single,IceSpear,Unslide,New,NewMult],Rotation:[135f,0f],ArmorItems:[{},{},{},{id:"minecraft:cyan_dye",Count:1b}],Invisible:1b,Silent:1b,Small:1b,ActiveEffects:[{Id:28b,Amplifier:0b,Duration:200000000,ShowParticles:0b}]}
execute if entity @s[y_rotation=-180..-90] run summon minecraft:armor_stand ^ ^1 ^0.5 {Tags:[Skill,Spell,Single,IceSpear,Unslide,New,NewMult],Rotation:[-135f,0f],ArmorItems:[{},{},{},{id:"minecraft:cyan_dye",Count:1b}],Invisible:1b,Silent:1b,Small:1b,ActiveEffects:[{Id:28b,Amplifier:0b,Duration:200000000,ShowParticles:0b}]}
execute if entity @s[y_rotation=-89.999..-0.001] run summon minecraft:armor_stand ^ ^1 ^0.5 {Tags:[Skill,Spell,Single,IceSpear,Unslide,New,NewMult],Rotation:[-45f,0f],ArmorItems:[{},{},{},{id:"minecraft:cyan_dye",Count:1b}],Invisible:1b,Silent:1b,Small:1b,ActiveEffects:[{Id:28b,Amplifier:0b,Duration:200000000,ShowParticles:0b}]}
tp @e[tag=IceSpear,tag=NewMult,distance=..2,limit=1] ^ ^1 ^0.5 facing ^ ^1 ^1

#Mult Number>1なら全体(NewMult)を右にx回転、直前(NewMultLast)から左に2x回転した向きに次を召喚
scoreboard players remove #Mult Number 1
execute if entity @e[tag=IceSpear,tag=NewMultLast,distance=..2,limit=1] rotated as @e[tag=IceSpear,tag=NewMultLast,distance=..2,limit=1] rotated ~-16 ~ run tp @e[tag=IceSpear,tag=NewMult,distance=..2,limit=1] ^ ^1 ^0.5 facing ^ ^1 ^1
execute if score #Mult Number matches 1.. as @e[tag=IceSpear,tag=New,distance=..2] at @s run tp @s ~ ~ ~ ~8 ~

tag @e[tag=IceSpear,tag=NewMultLast,distance=..2,limit=1] remove NewMultLast
execute if score #Mult Number matches 1.. run tag @e[tag=IceSpear,tag=NewMult,distance=..2,limit=1] add NewMultLast
tag @e[tag=IceSpear,tag=NewMult,distance=..2,limit=1] remove NewMult

execute if score #Mult Number matches 0 as @e[tag=IceSpear,tag=New,distance=..2] run function skill:act/ice_spear/act2
execute if score #Mult Number matches 1.. run function skill:act/ice_spear/act1
