#初期化
data modify entity 00000000-0000-0000-0000-000000000000 ArmorItems[3] set from block ~ ~ ~ Items[0]
data modify block ~ ~ ~ Items[0].tag.display.Lore set value []
#UniqueName
execute if data block ~ ~ ~ Items[0].tag.UniqueName unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,tag:{UniqueName:"None"}}]} run function item:lore/unique_name
#BaseName
function item:lore/base_name
