#BaseName
execute if data block -40691 2 -40700 RecordItem.tag.ItemLevel run function item:lore/equipment/base_name/with_itemlevel
execute unless data block -40691 2 -40700 RecordItem.tag.ItemLevel run function item:lore/equipment/base_name/without_itemlevel
execute if data block -40691 2 -40700 RecordItem.tag.UniqueName run data modify block -40691 2 -40700 RecordItem.tag.display.Lore append from block -40692 1 -40700 Text1
execute unless data block -40691 2 -40700 RecordItem.tag.UniqueName run data modify block -40691 2 -40700 RecordItem.tag.display.Name set from block -40692 1 -40700 Text1
