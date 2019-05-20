scoreboard players set #RandMod Number 2
function main:rand

execute if score #RandMod Number matches 0 run function enemy:summon/pack/husk
execute if score #RandMod Number matches 1 run function enemy:summon/pack/skeleton_flame_mage
