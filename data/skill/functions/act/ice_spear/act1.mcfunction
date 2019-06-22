execute if entity @s[y_rotation=0..90] run summon minecraft:armor_stand ^ ^1 ^0.5 {Tags:[Skill,Spell,SingleTarget,KillOnFin,IceSpear,UniqueTick,Physics,Move,CorrectModel,Unslide,New],Rotation:[45f,0f],ArmorItems:[{},{},{},{id:"minecraft:sugar",Count:1b,tag:{CustomModelData:2100500}}],Invisible:1b,Silent:1b,Small:1b,ActiveEffects:[{Id:28b,Amplifier:0b,Duration:200000000,ShowParticles:0b}]}
execute if entity @s[y_rotation=90.001..180] run summon minecraft:armor_stand ^ ^1 ^0.5 {Tags:[Skill,Spell,SingleTarget,KillOnFin,IceSpear,UniqueTick,Physics,Move,CorrectModel,Unslide,New],Rotation:[135f,0f],ArmorItems:[{},{},{},{id:"minecraft:sugar",Count:1b,tag:{CustomModelData:2100500}}],Invisible:1b,Silent:1b,Small:1b,ActiveEffects:[{Id:28b,Amplifier:0b,Duration:200000000,ShowParticles:0b}]}
execute if entity @s[y_rotation=-180..-90] run summon minecraft:armor_stand ^ ^1 ^0.5 {Tags:[Skill,Spell,SingleTarget,KillOnFin,IceSpear,UniqueTick,Physics,Move,CorrectModel,Unslide,New],Rotation:[-135f,0f],ArmorItems:[{},{},{},{id:"minecraft:sugar",Count:1b,tag:{CustomModelData:2100500}}],Invisible:1b,Silent:1b,Small:1b,ActiveEffects:[{Id:28b,Amplifier:0b,Duration:200000000,ShowParticles:0b}]}
execute if entity @s[y_rotation=-89.999..-0.001] run summon minecraft:armor_stand ^ ^1 ^0.5 {Tags:[Skill,Spell,SingleTarget,KillOnFin,IceSpear,UniqueTick,Physics,Move,CorrectModel,Unslide,New],Rotation:[-45f,0f],ArmorItems:[{},{},{},{id:"minecraft:sugar",Count:1b,tag:{CustomModelData:2100500}}],Invisible:1b,Silent:1b,Small:1b,ActiveEffects:[{Id:28b,Amplifier:0b,Duration:200000000,ShowParticles:0b}]}
tp @e[tag=IceSpear,tag=New,distance=..2,limit=1,sort=nearest] ^ ^1 ^0.5 facing ^ ^1 ^1

scoreboard players remove #Temp Mult 1
execute if score #Temp Mult matches 0.. as @e[tag=IceSpear,tag=New,distance=..15] at @s run tp @s ^ ^ ^0.8

execute if score #Temp Mult matches -1 as @e[tag=IceSpear,tag=New,distance=..15] run function skill:act/ice_spear/act2
execute if score #Temp Mult matches 0.. run function skill:act/ice_spear/act1
