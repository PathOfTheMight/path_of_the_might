#✠
#初期化
data modify block -40691 1 -40700 RecordItem set from block ~ ~ ~ Items[0]
data modify block ~ ~ ~ Items[0].tag.display.Lore set value []
#UniqueName unless data block ~ ~ ~ {Items:[{Slot:0b,tag:{UniqueName:"None"}}]} 
execute if data block ~ ~ ~ Items[0].tag.UniqueName run function item:lore/equipment/unique_name
#BaseName
function item:lore/equipment/base_name/main
#BaseStats
function item:lore/equipment/base_stats/main
#Requirements
function item:lore/equipment/requirements
#Prefix
function item:lore/equipment/prefix
#Suffix
function item:lore/equipment/suffix
