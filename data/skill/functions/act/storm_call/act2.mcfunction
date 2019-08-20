#PosY += Dur/2
summon minecraft:armor_stand ~ ~ ~ {Tags:[Skill,StormCall,StormCallFall,UniqueTick,New],NoGravity:1b,Invisible:1b,Silent:1b,Small:1b,Marker:1b}
scoreboard players operation #ID Number = @s ID
scoreboard players operation #Dur Number = @s Dur
execute store result score #Y0 Number run data get entity @s Pos[1] 2
scoreboard players operation #Y0 Number += #Dur Number

execute as @e[tag=StormCallFall,tag=New,distance=..1,limit=1] run function skill:act/storm_call/act3

tag @s remove StormCallWait
