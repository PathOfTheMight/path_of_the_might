tp @s ^ ^0.01 ^0.5 facing ^ ^0.01 ^1
#Diffuse
function main:physics/diffuse/xy

function skill:calc/act/apply/main

#Rng
scoreboard players set @s Rng 80

tag @s remove New
