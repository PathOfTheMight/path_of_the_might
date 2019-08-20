scoreboard players remove @s Chai 1

function skill:calc/range/cancel/calc_power

execute if entity @s[tag=SkillP] run function skill:calc/chain/player/main
execute if entity @s[tag=SkillE] run function skill:calc/chain/enemy/main

execute as @e[tag=Chained,distance=..15] run function skill:calc/range/cancel/chain
execute facing entity @e[tag=Chained,limit=1,sort=nearest,distance=..15] eyes run tp @s ~ ~ ~ facing ^ ^ ^10

tag @e[tag=Chained,distance=..15] remove Chained
tag @s add ChangeMoving
