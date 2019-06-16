scoreboard players set #RandMod Number 4
function main:rand

execute if score #RandMod Number matches 0 run function enemy:summon/pack/husk
execute if score #RandMod Number matches 1 run function enemy:summon/pack/skeleton_flame_mage
execute if score #RandMod Number matches 2 run function enemy:summon/pack/skeleton_spark_mage
execute if score #RandMod Number matches 3 run function enemy:summon/pack/skeleton_ice_mage
