#reroll magic
#remove all mods
function item:enchant/remove/prefix/all
function item:enchant/remove/suffix/all

#1/2:PS 1/4:P 1/4:S
scoreboard players set #RandMod Number 4
function main:rand
scoreboard players operation #CraftRand Number = #RandMod Number

execute if score #CraftRand Number matches 0..2 run function item:enchant/add/prefix/main
execute if score #CraftRand Number matches 1..3 run function item:enchant/add/suffix/main

scoreboard players set #Success Number 1
