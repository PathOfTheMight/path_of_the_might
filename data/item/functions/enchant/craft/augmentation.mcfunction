#add 1 mod to magic
scoreboard players set #RandMod Number 2
function main:rand
scoreboard players operation #CraftRand Number = #RandMod Number

execute if score #PCount Number matches 1 run scoreboard players set #CraftRand Number 1
execute if score #SCount Number matches 1 run scoreboard players set #CraftRand Number 0

execute if score #CraftRand Number matches 0 run function item:enchant/add/prefix/main
execute if score #CraftRand Number matches 1 run function item:enchant/add/suffix/main

scoreboard players set #Success Number 1
