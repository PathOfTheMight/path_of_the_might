scoreboard players set #Flag Number 0

scoreboard players set #RandMod Number 3
function main:rand

execute if score #RandMod Number matches 0 if score #P0 Number matches 1 store success score #Flag Number run data modify block ~ ~ ~ Items[0].tag.Prefix[0] set value {Slot:0b}
execute if score #RandMod Number matches 1 if score #P1 Number matches 1 store success score #Flag Number run data modify block ~ ~ ~ Items[0].tag.Prefix[1] set value {Slot:1b}
execute if score #RandMod Number matches 2 if score #P2 Number matches 1 store success score #Flag Number run data modify block ~ ~ ~ Items[0].tag.Prefix[2] set value {Slot:2b}

execute if score #Flag Number matches 1 run scoreboard players remove #PRemove Number 1
execute if score #Flag Number matches 0 run function item:enchant/remove/prefix/one
