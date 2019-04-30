scoreboard players set #PRemove Number 3
scoreboard players set #SRemove Number 3

#1/3:PPSS 1/6:PPPSS 1/6:PPSSS 1/3:PPPSSS
scoreboard players set #RandMod Number 6
function main:rand

scoreboard players set #PAdd Number 2
scoreboard players set #SAdd Number 2
execute if score #RandMod Number matches 1..3 run scoreboard players add #PAdd Number 1
execute if score #RandMod Number matches 2..4 run scoreboard players add #SAdd Number 1

function item:enchant/calc/random_name/main

scoreboard players set #Success Number 1
