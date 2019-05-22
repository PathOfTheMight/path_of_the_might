#Prefix
function item:enchant/calc/count_prefix
execute if score #P0 Number matches 1 run data modify block ~ ~ ~ Items[0].tag.display.Lore append from block ~ ~ ~ Items[0].tag.Prefix[0].Lore
execute if score #P0 Number matches 1 run data modify block ~ ~ ~ Items[0].tag.display.Lore append from block ~ ~ ~ Items[0].tag.Prefix[0].Lore2
execute if score #P0 Number matches 1 run data modify block ~ ~ ~ Items[0].tag.display.Lore append from block ~ ~ ~ Items[0].tag.Prefix[0].Lore3

execute if score #P1 Number matches 1 run data modify block ~ ~ ~ Items[0].tag.display.Lore append from block ~ ~ ~ Items[0].tag.Prefix[1].Lore
execute if score #P1 Number matches 1 run data modify block ~ ~ ~ Items[0].tag.display.Lore append from block ~ ~ ~ Items[0].tag.Prefix[1].Lore2
execute if score #P1 Number matches 1 run data modify block ~ ~ ~ Items[0].tag.display.Lore append from block ~ ~ ~ Items[0].tag.Prefix[1].Lore3

execute if score #P2 Number matches 1 run data modify block ~ ~ ~ Items[0].tag.display.Lore append from block ~ ~ ~ Items[0].tag.Prefix[2].Lore
execute if score #P2 Number matches 1 run data modify block ~ ~ ~ Items[0].tag.display.Lore append from block ~ ~ ~ Items[0].tag.Prefix[2].Lore2
execute if score #P2 Number matches 1 run data modify block ~ ~ ~ Items[0].tag.display.Lore append from block ~ ~ ~ Items[0].tag.Prefix[2].Lore3
