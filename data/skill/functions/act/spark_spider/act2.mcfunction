tp @s ^ ^0.51 ^0.5 facing ^ ^0.51 ^1
#Diffuse
function main:physics/diffuse/x

function skill:calc/act/apply/main

#Rng
scoreboard players set @s Rng 30

tag @s remove New
