#Gem
data modify block -40691 2 -40700 RecordItem.tag.display.Lore append value '{"text":"------------------","color":"white","italic":false}'

#execute store result score #GemCount Number run data get block -40691 2 -40700 RecordItem.tag.Gems


#GEMあり・からでわける
execute if data block -40691 2 -40700 RecordItem.tag.Gems[{Slot:0b}] run data modify block -40691 1 -40700 RecordItem.tag set from block -40691 2 -40700 RecordItem.tag.Gems[{Slot:0b}]
execute if data block -40691 2 -40700 RecordItem.tag.Gems[{Slot:0b}] run function item:lore/equipment/gem/fork
execute if data block -40691 2 -40700 RecordItem.tag.Gems[{Slot:1b}] run data modify block -40691 1 -40700 RecordItem.tag set from block -40691 2 -40700 RecordItem.tag.Gems[{Slot:1b}]
execute if data block -40691 2 -40700 RecordItem.tag.Gems[{Slot:1b}] run function item:lore/equipment/gem/fork
execute if data block -40691 2 -40700 RecordItem.tag.Gems[{Slot:2b}] run data modify block -40691 1 -40700 RecordItem.tag set from block -40691 2 -40700 RecordItem.tag.Gems[{Slot:2b}]
execute if data block -40691 2 -40700 RecordItem.tag.Gems[{Slot:2b}] run function item:lore/equipment/gem/fork
execute if data block -40691 2 -40700 RecordItem.tag.Gems[{Slot:3b}] run data modify block -40691 1 -40700 RecordItem.tag set from block -40691 2 -40700 RecordItem.tag.Gems[{Slot:3b}]
execute if data block -40691 2 -40700 RecordItem.tag.Gems[{Slot:3b}] run function item:lore/equipment/gem/fork
execute if data block -40691 2 -40700 RecordItem.tag.Gems[{Slot:4b}] run data modify block -40691 1 -40700 RecordItem.tag set from block -40691 2 -40700 RecordItem.tag.Gems[{Slot:4b}]
execute if data block -40691 2 -40700 RecordItem.tag.Gems[{Slot:4b}] run function item:lore/equipment/gem/fork
execute if data block -40691 2 -40700 RecordItem.tag.Gems[{Slot:5b}] run data modify block -40691 1 -40700 RecordItem.tag set from block -40691 2 -40700 RecordItem.tag.Gems[{Slot:5b}]
execute if data block -40691 2 -40700 RecordItem.tag.Gems[{Slot:5b}] run function item:lore/equipment/gem/fork
