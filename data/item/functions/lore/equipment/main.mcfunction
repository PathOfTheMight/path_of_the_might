#✠
#初期化
data modify storage item: Item.tag.display.Lore set value []

execute if data storage item: Item.tag.UniqueName run function item:lore/equipment/unique_name
#BaseName
function item:lore/equipment/base_name
#WeaponType
execute if data storage item: Item.tag.WeaponType run function item:lore/equipment/weapon_type
#BaseStats
function item:lore/equipment/base_stats/main
#Requirements
execute if data storage item: Item.tag.Requirements run function item:lore/equipment/requirements/main
#Implicit
function item:lore/equipment/implicit
#Prefix
function item:lore/equipment/prefix
#Suffix
function item:lore/equipment/suffix
#Gem
execute if data storage item: Item.tag.Gems run function item:lore/equipment/gem/main
