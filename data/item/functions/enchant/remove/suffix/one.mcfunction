scoreboard players set #Flag Number 0

scoreboard players set #RandMod Number 3
function main:rand

execute if score #RandMod Number matches 0 if score #S0 Number matches 1 store success score #Flag Number run data modify block -40691 2 -40700 RecordItem.tag.Suffix[0] set value {Slot:0b}
execute if score #RandMod Number matches 1 if score #S1 Number matches 1 store success score #Flag Number run data modify block -40691 2 -40700 RecordItem.tag.Suffix[1] set value {Slot:1b}
execute if score #RandMod Number matches 2 if score #S2 Number matches 1 store success score #Flag Number run data modify block -40691 2 -40700 RecordItem.tag.Suffix[2] set value {Slot:2b}

execute if score #Flag Number matches 1 run scoreboard players remove #SRemove Number 1
execute if score #Flag Number matches 0 run function item:enchant/remove/suffix/one
