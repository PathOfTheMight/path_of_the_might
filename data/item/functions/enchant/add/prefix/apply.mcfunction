scoreboard players remove #PAdd Number 1
execute if score #P0 Number matches 0 run data modify block ~ ~ ~ Items[0].tag.Prefix[0].Name set from block -40896 1 -40960 Text1
execute if score #P0 Number matches 1 if score #P1 Number matches 0 run data modify block ~ ~ ~ Items[0].tag.Prefix[1].Name set from block -40896 1 -40960 Text1
execute if score #P0 Number matches 1 if score #P1 Number matches 1 run data modify block ~ ~ ~ Items[0].tag.Prefix[2].Name set from block -40896 1 -40960 Text1

execute if score #P0 Number matches 0 store result block ~ ~ ~ Items[0].tag.Prefix[0].Value int 1 run scoreboard players get #RandMod Number
execute if score #P0 Number matches 1 if score #P1 Number matches 0 store result block ~ ~ ~ Items[0].tag.Prefix[1].Value int 1 run scoreboard players get #RandMod Number
execute if score #P0 Number matches 1 if score #P1 Number matches 1 store result block ~ ~ ~ Items[0].tag.Prefix[2].Value int 1 run scoreboard players get #RandMod Number
