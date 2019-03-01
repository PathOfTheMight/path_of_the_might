tp @s ^ ^ ^-1

execute if score #summons Number matches ..0 positioned as @s run summon minecraft:armor_stand ^ ^ ^ {Tags:[magic,atk,weapon_effect,New,Newtp],NoGravity:1,Invisible:1,Marker:1}
execute if score #summons Number matches ..0 at @s run tp @e[tag=weapon_effect,tag=Newtp,limit=1] ~ ~ ~ facing ^ ^ ^-1

tag @e[tag=weapon_effect,tag=Newtp,limit=1] remove Newtp

scoreboard players remove #moves Number 1
scoreboard players remove #summons Number 1
execute if score #moves Number matches 0 run kill @s
execute if score #moves Number matches 1.. positioned as @s run function skill:act/normal_atk/melee_weapon1
