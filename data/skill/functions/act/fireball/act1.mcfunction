summon minecraft:armor_stand ^ ^1 ^0.5 {Tags:[Skill,Spell,Single,Fireball,Move,Unslide,New,NewMult],ArmorItems:[{},{},{},{id:"minecraft:brick",Count:1b}],Invisible:1b,Silent:1b,Small:1b,ActiveEffects:[{Id:28b,Amplifier:0b,Duration:200000000,ShowParticles:0b}]}
tp @e[tag=Fireball,tag=NewMult,distance=..2,limit=1] ^ ^1 ^0.5 facing ^ ^1 ^100

#Mult Number>1なら全体(NewMult)を右にx回転、直前(NewMultLast)から左に2x回転した向きに次を召喚
scoreboard players remove #Mult Number 1
execute rotated as @e[tag=Fireball,tag=NewMultLast,distance=..2,limit=1] rotated ~-18 ~ run tp @e[tag=Fireball,tag=NewMult,distance=..2,limit=1] ^ ^1 ^0.5 facing ^ ^1 ^1.5
execute if score #Mult Number matches 1.. as @e[tag=Fireball,distance=..2,tag=New] at @s run tp @s ~ ~ ~ ~9 ~

tag @e[tag=Fireball,tag=NewMultLast,distance=..2,limit=1] remove NewMultLast
execute if score #Mult Number matches 1.. run tag @e[tag=Fireball,tag=NewMult,distance=..2,limit=1] add NewMultLast
tag @e[tag=Fireball,tag=NewMult,distance=..2,limit=1] remove NewMult

execute if score #Mult Number matches 0 as @e[tag=Fireball,distance=..2,tag=New] run function skill:act/fireball/act2
execute if score #Mult Number matches 1.. run function skill:act/fireball/act1