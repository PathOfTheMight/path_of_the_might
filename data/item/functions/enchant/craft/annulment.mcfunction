#remove 1 mod from magic or rare
scoreboard players operation #RandMod Number = #PCount Number
scoreboard players operation #RandMod Number += #SCount Number
function main:rand
scoreboard players operation #CraftRand Number = #RandMod Number

execute if score #PCount Number > #CraftRand Number run function item:enchant/remove/prefix/one
execute unless score #PCount Number > #CraftRand Number run function item:enchant/remove/suffix/one

scoreboard players set #Success Number 1
