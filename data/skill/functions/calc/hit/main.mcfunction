execute if entity @s[tag=SingleTarget] run function skill:calc/hit/single/main
execute if entity @s[tag=AreaTarget] run function skill:calc/hit/area/main

scoreboard players reset @e[scores={RngFlag=1..2},distance=..21] RngFlag
