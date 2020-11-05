#magic to rare
#1/2:P 1/2:S
scoreboard players set #RandMod Number 2
function main:rand
scoreboard players operation #CraftRand Number = #RandMod Number

execute if score #CraftRand Number matches 0 run function item:enchant/add/prefix/main
execute if score #CraftRand Number matches 1 run function item:enchant/add/suffix/main

data modify storage item: Item.tag.Rarity set value "Rare"
function item:enchant/random_name/main

scoreboard players set #Success Number 1
