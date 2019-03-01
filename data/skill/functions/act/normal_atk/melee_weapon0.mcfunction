#angle1
function main:rand
scoreboard players operation #angle Number = #Rand Number

execute if score #angle1 Number matches 1 run scoreboard players operation #angle Number %= #180 Number
execute if score #angle1 Number matches 1 run scoreboard players remove #angle Number 90

execute if score #angle1 Number matches 2 run scoreboard players operation #angle Number %= #120 Number
execute if score #angle1 Number matches 2 run scoreboard players remove #angle Number 90

execute if score #angle1 Number matches 3 run scoreboard players operation #angle Number %= #20 Number
execute if score #angle1 Number matches 3 run scoreboard players remove #angle Number 70

execute if score #angle1 Number matches 4 run scoreboard players operation #angle Number %= #90 Number
execute if score #angle1 Number matches 4 run scoreboard players remove #angle Number 45
#AS召喚
summon minecraft:armor_stand ^ ^ ^1 {Tags:[melee_weapon0,New],NoGravity:0,Invisible:1b}
tp @e[tag=melee_weapon0,tag=New,limit=1] ^ ^ ^1 ~ ~

#105度回転
function main:rand
execute if score #Rand Number matches 0..50000000 as @e[tag=melee_weapon0,tag=New,limit=1] at @s run tp @s ~ ~ ~ ~105 ~
execute if score #Rand Number matches 50000001..100000000 as @e[tag=melee_weapon0,tag=New,limit=1] at @s run tp @s ~ ~ ~ ~-105 ~
execute store result entity @e[tag=melee_weapon0,tag=New,limit=1] Rotation[1] float 1 run scoreboard players get #angle Number
#angle2
execute if score #angle2 Number matches 1 as @e[tag=melee_weapon0,tag=New,limit=1] at @s run tp @s ^ ^ ^0.7
execute if score #angle2 Number matches 2 as @e[tag=melee_weapon0,tag=New,limit=1] at @s run tp @s ^ ^ ^1.2
execute if score #angle2 Number matches 3 as @e[tag=melee_weapon0,tag=New,limit=1] at @s run tp @s ^ ^ ^2

execute positioned as @e[tag=melee_weapon0,tag=New,limit=1] facing entity @s feet positioned as @s as @e[tag=melee_weapon0,tag=New,limit=1] run function skill:act/normal_atk/melee_weapon1

tag @e[tag=melee_weapon0,tag=New,limit=1] remove New