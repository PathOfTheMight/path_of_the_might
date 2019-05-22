data modify block ~ ~ ~ Items[0].tag.Prefix[1].Name set from block -40691 1 -40700 RecordItem.tag.AffixName
data modify block ~ ~ ~ Items[0].tag.Prefix[1].Lore set from block -40692 1 -40700 Text1
execute if score #LoreCount Number matches 2.. run data modify block ~ ~ ~ Items[0].tag.Prefix[1].Lore2 set from block -40692 1 -40700 Text2
execute if score #LoreCount Number matches 3.. run data modify block ~ ~ ~ Items[0].tag.Prefix[1].Lore3 set from block -40692 1 -40700 Text3
execute store result block ~ ~ ~ Items[0].tag.Prefix[1].GlobalTier int 1 run scoreboard players get #GlobalTier Number
execute store result block ~ ~ ~ Items[0].tag.Prefix[1].AffixValue int 1 run scoreboard players get #AffixValue Number
execute store result block ~ ~ ~ Items[0].tag.Prefix[1].AffixValue2 int 1 run scoreboard players get #AffixValue2 Number
