#✠
#初期化
data modify block -40691 2 -40700 RecordItem.tag.display.Lore set value []

execute if data block -40691 2 -40700 RecordItem.tag.UniqueName run function item:lore/equipment/unique_name
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
#Gem
function item:lore/equipment/gem/main

