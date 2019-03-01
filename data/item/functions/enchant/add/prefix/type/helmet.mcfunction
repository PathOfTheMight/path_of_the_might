scoreboard players set #RandMod Number 3
function main:rand

execute if score #RandMod Number matches 0 if score #ItemLevel Number matches 10.. if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,tag:{Prefix:[{Name:"Life"}]}}]} run scoreboard players set #Weight Number 50
execute if score #RandMod Number matches 0 if score #ItemLevel Number matches 10.. if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,tag:{Prefix:[{Name:"Life"}]}}]} store success score #Flag Number run function item:enchant/add/prefix/mod/life

execute if score #RandMod Number matches 1 if score #ItemLevel Number matches 10.. if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,tag:{Prefix:[{Name:"Armor"}]}}]} store success score #Flag Number run function item:enchant/add/prefix/mod/armor

execute if score #RandMod Number matches 2 if score #ItemLevel Number matches 1.. if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,tag:{Prefix:[{Name:"Str"}]}}]} store success score #Flag Number run function item:enchant/add/prefix/mod/str
