data modify block ~ ~ ~ Items[0].tag.Suffix[0].Name set from entity 00000000-0000-0000-0000-000000000000 ArmorItems[3].tag.AffixName
data modify block ~ ~ ~ Items[0].tag.Suffix[0].Lore set from block -40896 1 -40960 Text1
execute if score #LoreCount Number matches 2.. run data modify block ~ ~ ~ Items[0].tag.Suffix[0].Lore2 set from block -40896 1 -40960 Text2
execute if score #LoreCount Number matches 3.. run data modify block ~ ~ ~ Items[0].tag.Suffix[0].Lore3 set from block -40896 1 -40960 Text3
execute store result block ~ ~ ~ Items[0].tag.Suffix[0].GlobalTier int 1 run scoreboard players get #GlobalTier Number
execute store result block ~ ~ ~ Items[0].tag.Suffix[0].AffixValue int 1 run scoreboard players get #AffixValue Number
execute store result block ~ ~ ~ Items[0].tag.Suffix[0].AffixValue2 int 1 run scoreboard players get #AffixValue2 Number
