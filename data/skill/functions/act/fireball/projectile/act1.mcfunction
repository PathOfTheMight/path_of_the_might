summon minecraft:armor_stand ^ ^1 ^0.5 {Tags:[Skill,Spell,SingleTarget,UniqueKill,KillOnFin,Fireball,UniqueTick,Physics,Move,Unslide,CorrectModel,New,NewMult],Rotation:[45f,0f],ArmorItems:[{},{},{},{id:"minecraft:sugar",Count:1b,tag:{CustomModelData:2100000}}],Invisible:1b,Silent:1b,Small:1b,ActiveEffects:[{Id:28b,Amplifier:0b,Duration:200000000,ShowParticles:0b}]}
tp @e[tag=Fireball,tag=NewMult,distance=..2,limit=1] ^ ^1 ^0.5 facing ^ ^1 ^100

#Temp Mult>1なら全体(NewMult)を右にx回転、直前(NewMultLast)から左に2x回転した向きに次を召喚
scoreboard players remove #Temp Mult 1
execute rotated as @e[tag=Fireball,tag=NewMultLast,distance=..2,limit=1] rotated ~-18 ~ run tp @e[tag=Fireball,tag=NewMult,distance=..2,limit=1] ^ ^1 ^0.5 facing ^ ^1 ^1.5
execute if score #Temp Mult matches 0.. as @e[tag=Fireball,distance=..2,tag=New] at @s run tp @s ~ ~ ~ ~9 ~

tag @e[tag=Fireball,tag=NewMultLast,distance=..2,limit=1] remove NewMultLast
execute if score #Temp Mult matches 0.. run tag @e[tag=Fireball,tag=NewMult,distance=..2,limit=1] add NewMultLast
tag @e[tag=Fireball,tag=NewMult,distance=..2,limit=1] remove NewMult

execute if score #Temp Mult matches -1 as @e[tag=Fireball,distance=..2,tag=New] run function skill:act/fireball/projectile/act2
execute if score #Temp Mult matches 0.. run function skill:act/fireball/projectile/act1
