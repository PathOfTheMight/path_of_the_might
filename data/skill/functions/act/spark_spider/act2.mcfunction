tp @s ^ ^0.51 ^0.5 facing ^ ^0.51 ^1
#Diffuse
function main:physics/diffuse/x

function skill:calc/act/apply/main

#Fork
scoreboard players set @s Fork 0
#Chai
scoreboard players set @s Chai 0
#Rng
scoreboard players set @s Rng 40

tag @s remove New
