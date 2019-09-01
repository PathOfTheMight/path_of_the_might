# -40691 2 -40700 に装備
# -40691 1 -40700 にカレンシー
scoreboard players set #Success Number 0

function item:enchant/calc/count_prefix
function item:enchant/calc/count_suffix
execute store result score #ItemLevel Number run data get block -40691 2 -40700 RecordItem.tag.ItemLevel 1

execute if data block -40691 2 -40700 {RecordItem:{tag:{Rarity:"Normal"}}} if data block -40691 1 -40700 {RecordItem:{tag:{Transmutation:1b}}} run function item:enchant/craft/transmutation
execute if data block -40691 2 -40700 {RecordItem:{tag:{Rarity:"Magic"}}} if data block -40691 1 -40700 {RecordItem:{tag:{Alteration:1b}}} run function item:enchant/craft/alteration
execute if data block -40691 2 -40700 {RecordItem:{tag:{Rarity:"Magic"}}} if data block -40691 1 -40700 {RecordItem:{tag:{Augmentation:1b}}} run function item:enchant/craft/augmentation
execute if data block -40691 2 -40700 {RecordItem:{tag:{Rarity:"Magic"}}} if data block -40691 1 -40700 {RecordItem:{tag:{Regal:1b}}} run function item:enchant/craft/regal
execute if data block -40691 2 -40700 {RecordItem:{tag:{Rarity:"Normal"}}} if data block -40691 1 -40700 {RecordItem:{tag:{Alchemy:1b}}} run function item:enchant/craft/alchemy
execute if data block -40691 2 -40700 {RecordItem:{tag:{Rarity:"Rare"}}} if data block -40691 1 -40700 {RecordItem:{tag:{Chaos:1b}}} run function item:enchant/craft/chaos
execute if data block -40691 2 -40700 {RecordItem:{tag:{Rarity:"Rare"}}} if data block -40691 1 -40700 {RecordItem:{tag:{Exalted:1b}}} run function item:enchant/craft/exalted
execute if data block -40691 2 -40700 {RecordItem:{tag:{Rarity:"Magic"}}} if data block -40691 1 -40700 {RecordItem:{tag:{Annulment:1b}}} run function item:enchant/craft/annulment
execute if data block -40691 2 -40700 {RecordItem:{tag:{Rarity:"Rare"}}} if data block -40691 1 -40700 {RecordItem:{tag:{Annulment:1b}}} run function item:enchant/craft/annulment
execute if data block -40691 2 -40700 {RecordItem:{tag:{Rarity:"Magic"}}} if data block -40691 1 -40700 {RecordItem:{tag:{Scouring:1b}}} run function item:enchant/craft/scouring
execute if data block -40691 2 -40700 {RecordItem:{tag:{Rarity:"Rare"}}} if data block -40691 1 -40700 {RecordItem:{tag:{Scouring:1b}}} run function item:enchant/craft/scouring
execute if data block -40691 2 -40700 {RecordItem:{tag:{Rarity:"Rare"}}} if data block -40691 1 -40700 {RecordItem:{tag:{Rename:1b}}} run function item:enchant/random_name/main

execute if score #PRemove Number matches 1.. run function item:enchant/remove/prefix/main
execute if score #SRemove Number matches 1.. run function item:enchant/remove/suffix/main

execute if score #PAdd Number matches 1.. run function item:enchant/add/prefix/main
execute if score #SAdd Number matches 1.. run function item:enchant/add/suffix/main

#Lore更新
execute if score #Success Number matches 1 run function item:lore/equipment/main
