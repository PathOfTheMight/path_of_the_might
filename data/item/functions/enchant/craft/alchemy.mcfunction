#normal to rare
#1/9:PPPS 1/9:PPSS 1/9:PSSS 1/6:PPPSS 1/6:PPSSS 1/3:PPPSSS
scoreboard players set #RandMod Number 18
function main:rand
scoreboard players operation #CraftRand Number = #RandMod Number

function item:enchant/add/prefix/main
function item:enchant/add/suffix/main
execute if score #CraftRand Number matches 2..17 run function item:enchant/add/prefix/main
execute if score #CraftRand Number matches 7..17 run function item:enchant/add/prefix/main
execute if score #CraftRand Number matches 0..15 run function item:enchant/add/suffix/main
execute if score #CraftRand Number matches 0..1 run function item:enchant/add/suffix/main
execute if score #CraftRand Number matches 4..12 run function item:enchant/add/suffix/main

data modify storage item: Item.tag.Rarity set value "Rare"
function item:enchant/random_name/main

scoreboard players set #Success Number 1
