#Suffix
function item:enchant/calc/count_suffix
execute if score #S0 Number matches 1 run data modify block ~ ~ ~ Items[0].tag.display.Lore append from block ~ ~ ~ Items[0].tag.Suffix[0].Lore
execute if score #S0 Number matches 1 run data modify block ~ ~ ~ Items[0].tag.display.Lore append from block ~ ~ ~ Items[0].tag.Suffix[0].Lore2
execute if score #S0 Number matches 1 run data modify block ~ ~ ~ Items[0].tag.display.Lore append from block ~ ~ ~ Items[0].tag.Suffix[0].Lore3

execute if score #S1 Number matches 1 run data modify block ~ ~ ~ Items[0].tag.display.Lore append from block ~ ~ ~ Items[0].tag.Suffix[1].Lore
execute if score #S1 Number matches 1 run data modify block ~ ~ ~ Items[0].tag.display.Lore append from block ~ ~ ~ Items[0].tag.Suffix[1].Lore2
execute if score #S1 Number matches 1 run data modify block ~ ~ ~ Items[0].tag.display.Lore append from block ~ ~ ~ Items[0].tag.Suffix[1].Lore3

execute if score #S2 Number matches 1 run data modify block ~ ~ ~ Items[0].tag.display.Lore append from block ~ ~ ~ Items[0].tag.Suffix[2].Lore
execute if score #S2 Number matches 1 run data modify block ~ ~ ~ Items[0].tag.display.Lore append from block ~ ~ ~ Items[0].tag.Suffix[2].Lore2
execute if score #S2 Number matches 1 run data modify block ~ ~ ~ Items[0].tag.display.Lore append from block ~ ~ ~ Items[0].tag.Suffix[2].Lore3
