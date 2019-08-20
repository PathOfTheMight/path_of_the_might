function main:physics/rotate/random
scoreboard players set @s Dur 20
function skill:calc/act/apply/main

tag @s remove New

particle minecraft:firework ~ ~ ~ 0 0 0 0.3 9 force
playsound minecraft:block.glass.break master @a[distance=..16] ~ ~ ~ 1 0.6
#Arrowと多段HIT回避
function skill:calc/range/cancel/calc_power
execute as @e[scores={RngFlag=1},limit=1,sort=nearest] run function skill:calc/range/cancel/trigger
