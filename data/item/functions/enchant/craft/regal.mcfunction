scoreboard players set #RandMod Number 2
function main:rand

#1/2:P 1/2:S
execute if score #RandMod Number matches 0 run scoreboard players set #PAdd Number 1
execute if score #RandMod Number matches 1 run scoreboard players set #SAdd Number 1

data modify block ~ ~ ~ Items[0].tag.Rarity set value "Rare"

scoreboard players set #Success Number 1