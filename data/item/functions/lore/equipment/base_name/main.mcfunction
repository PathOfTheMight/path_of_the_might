#BaseName
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.ItemLevel run function item:lore/equipment/base_name/with_itemlevel
execute unless data block ~ ~ ~ Items[{Slot:0b}].tag.ItemLevel run function item:lore/equipment/base_name/without_itemlevel
execute if data block ~ ~ ~ Items[0].tag.UniqueName run data modify block ~ ~ ~ Items[0].tag.display.Lore append from block -40692 1 -40700 Text1
execute unless data block ~ ~ ~ Items[0].tag.UniqueName run data modify block ~ ~ ~ Items[0].tag.display.Name set from block -40692 1 -40700 Text1
