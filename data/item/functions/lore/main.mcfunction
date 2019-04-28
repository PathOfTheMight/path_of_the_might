#✠
#初期化
data modify entity 00000000-0000-0000-0000-000000000000 ArmorItems[3] set from block ~ ~ ~ Items[0]
data modify block ~ ~ ~ Items[0].tag.display.Lore set value []
#UniqueName unless data block ~ ~ ~ {Items:[{Slot:0b,tag:{UniqueName:"None"}}]} 
execute if data block ~ ~ ~ Items[0].tag.UniqueName run function item:lore/unique_name
#BaseName
function item:lore/base_name
#BaseStats
function item:lore/base_stats/main
#Requirements
function item:lore/requirements
#Prefix
function item:lore/prefix
#Suffix
function item:lore/suffix
