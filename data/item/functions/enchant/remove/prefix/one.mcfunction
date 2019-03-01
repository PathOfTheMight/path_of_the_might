scoreboard players set #RandMod Number 2
function main:rand

execute if score #P0 Number matches 1 if score #RandMod Number matches 0 run data modify block ~ ~ ~ Items[0].tag.Prefix[0].Name set value "None"
execute if score #P0 Number matches 1 if score #RandMod Number matches 0 store result block ~ ~ ~ Items[0].tag.Prefix[0].Value int 1 run scoreboard players get #0 Number

execute if score #P1 Number matches 1 if score #RandMod Number matches 1 run data modify block ~ ~ ~ Items[0].tag.Prefix[1].Name set value "None"
execute if score #P1 Number matches 1 if score #RandMod Number matches 1 store result block ~ ~ ~ Items[0].tag.Prefix[1].Value int 1 run scoreboard players get #0 Number

execute if score #P2 Number matches 1 if score #P0 Number matches 1 if score #RandMod Number matches 1 run data modify block ~ ~ ~ Items[0].tag.Prefix[2].Name set value "None"
execute if score #P2 Number matches 1 if score #P0 Number matches 1 if score #RandMod Number matches 1 store result block ~ ~ ~ Items[0].tag.Prefix[2].Value int 1 run scoreboard players get #0 Number
execute if score #P2 Number matches 1 if score #P1 Number matches 1 if score #RandMod Number matches 0 run data modify block ~ ~ ~ Items[0].tag.Prefix[2].Name set value "None"
execute if score #P2 Number matches 1 if score #P1 Number matches 1 if score #RandMod Number matches 0 store result block ~ ~ ~ Items[0].tag.Prefix[2].Value int 1 run scoreboard players get #0 Number
