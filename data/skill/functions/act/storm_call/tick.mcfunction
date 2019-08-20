#StormCallMarker Dur<=20でFall
execute if entity @s[tag=StormCallWait,scores={Dur=..20}] run function skill:act/storm_call/act2
execute if entity @s[tag=StormCallMarker] unless block ~ ~-0.5 ~ #main:solid_block run tp @s ~ ~-0.5 ~
execute if entity @s[tag=StormCallMarker,scores={Dur=0}] run function skill:act/storm_call/kill
#StormCallFall
execute if entity @s[tag=StormCallFall] run particle minecraft:dust 0 1000000 50000000 1.5 ~ ~ ~ 0.5 0.5 0.5 1 3 force
execute if entity @s[tag=StormCallFall] run tp @s ~ ~-0.5 ~
