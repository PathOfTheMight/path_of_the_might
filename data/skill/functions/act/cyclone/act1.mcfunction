execute if score #Cyclone Number matches 1 run function main:physics/rotate/random

function skill:calc/act/apply/main
#Dur
scoreboard players set @s Dur 2100000000
#Radius
scoreboard players operation @s Radius = @s Rng

tag @s remove New
