function main:physics/rotate/random
scoreboard players set @s Dur 20
function skill:calc/act/apply/main

tag @s remove New

#Arrowと多段HIT回避
function skill:calc/range/cancel/calc_power
execute as @e[scores={RngFlag=1},limit=1,sort=nearest] run function skill:calc/range/cancel/trigger
