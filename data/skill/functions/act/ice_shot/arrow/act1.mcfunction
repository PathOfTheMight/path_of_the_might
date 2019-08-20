execute if entity @s[y_rotation=0..90] run summon minecraft:armor_stand ^ ^0.8 ^0.5 {Tags:[Skill,Attack,SingleTarget,KillOnFin,IceShot,UniqueHit,Physics,Move,CorrectModel,Unslide,New,NewMult],Rotation:[45f,0f],ArmorItems:[{},{},{},{id:"minecraft:sugar",Count:1b,tag:{CustomModelData:1100200}}],Invisible:1b,Silent:1b,Small:1b,ActiveEffects:[{Id:28b,Amplifier:0b,Duration:200000000,ShowParticles:0b}]}
execute if entity @s[y_rotation=90.001..180] run summon minecraft:armor_stand ^ ^0.8 ^0.5 {Tags:[Skill,Attack,SingleTarget,KillOnFin,IceShot,UniqueHit,Physics,Move,CorrectModel,Unslide,New,NewMult],Rotation:[135f,0f],ArmorItems:[{},{},{},{id:"minecraft:sugar",Count:1b,tag:{CustomModelData:1100200}}],Invisible:1b,Silent:1b,Small:1b,ActiveEffects:[{Id:28b,Amplifier:0b,Duration:200000000,ShowParticles:0b}]}
execute if entity @s[y_rotation=-180..-90] run summon minecraft:armor_stand ^ ^0.8 ^0.5 {Tags:[Skill,Attack,SingleTarget,KillOnFin,IceShot,UniqueHit,Physics,Move,CorrectModel,Unslide,New,NewMult],Rotation:[-135f,0f],ArmorItems:[{},{},{},{id:"minecraft:sugar",Count:1b,tag:{CustomModelData:1100200}}],Invisible:1b,Silent:1b,Small:1b,ActiveEffects:[{Id:28b,Amplifier:0b,Duration:200000000,ShowParticles:0b}]}
execute if entity @s[y_rotation=-89.999..-0.001] run summon minecraft:armor_stand ^ ^0.8 ^0.5 {Tags:[Skill,Attack,SingleTarget,KillOnFin,IceShot,UniqueHit,Physics,Move,CorrectModel,Unslide,New,NewMult],Rotation:[-45f,0f],ArmorItems:[{},{},{},{id:"minecraft:sugar",Count:1b,tag:{CustomModelData:1100200}}],Invisible:1b,Silent:1b,Small:1b,ActiveEffects:[{Id:28b,Amplifier:0b,Duration:200000000,ShowParticles:0b}]}

tp @e[tag=IceShot,tag=NewMult,distance=..2,limit=1] ^ ^0.8 ^0.5 facing ^ ^0.8 ^100

#Temp Mult>1なら全体(NewMult)を右にx回転、直前(NewMultLast)から左に2x回転した向きに次を召喚
scoreboard players remove #Temp Mult 1
execute rotated as @e[tag=IceShot,tag=NewMultLast,distance=..2,limit=1] rotated ~-16 ~ run tp @e[tag=IceShot,tag=NewMult,distance=..2,limit=1] ^ ^0.8 ^0.5 facing ^ ^0.8 ^1.5
execute if score #Temp Mult matches 0.. as @e[tag=IceShot,distance=..2,tag=New] at @s run tp @s ~ ~ ~ ~8 ~

tag @e[tag=IceShot,tag=NewMultLast,distance=..2,limit=1] remove NewMultLast
execute if score #Temp Mult matches 0.. run tag @e[tag=IceShot,tag=NewMult,distance=..2,limit=1] add NewMultLast
tag @e[tag=IceShot,tag=NewMult,distance=..2,limit=1] remove NewMult

execute if score #Temp Mult matches -1 as @e[tag=IceShot,distance=..2,tag=New] run function skill:act/ice_shot/arrow/act2
execute if score #Temp Mult matches 0.. run function skill:act/ice_shot/arrow/act1
