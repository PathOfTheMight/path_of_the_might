scoreboard players set #RandMod Number 2
function main:rand

execute if score #RandMod Number matches 0 run data modify storage unique_name: Suffix set from storage unique_name: Suffix[0]
execute if score #RandMod Number matches 1 run data modify storage unique_name: Suffix set from storage unique_name: Suffix[1]