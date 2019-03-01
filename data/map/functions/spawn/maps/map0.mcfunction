scoreboard players set #RandMod Number 3
function main:rand

execute if score #RandMod Number matches 0 run function enemy:summon/zombie
execute if score #RandMod Number matches 1 run function enemy:summon/husk
execute if score #RandMod Number matches 2 run function enemy:summon/skeleton_sword2h