scoreboard players operation #RandMod Number = #PCount Number
function main:rand

execute if score #RandMod Number matches 0 run data remove storage item: Item.tag.Prefix[0]
execute if score #RandMod Number matches 1 run data remove storage item: Item.tag.Prefix[1]
execute if score #RandMod Number matches 2 run data remove storage item: Item.tag.Prefix[2]
