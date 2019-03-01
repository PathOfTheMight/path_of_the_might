scoreboard players set #RandMod Number 4
function main:rand

#1/2:PS 1/4:P 1/4:S
execute if score #RandMod Number matches 0..2 run scoreboard players set #PAdd Number 1
execute if score #RandMod Number matches 1..3 run scoreboard players set #SAdd Number 1

data modify block ~ ~ ~ Items[0].tag.Rarity set value "Magic"

scoreboard players set #Success Number 1
