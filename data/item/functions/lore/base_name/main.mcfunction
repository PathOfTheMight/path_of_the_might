#BaseName
execute if data block ~ ~ ~ Items[{Slot:0b}].tag.ItemLevel run function item:lore/base_name/with_itemlevel
execute unless data block ~ ~ ~ Items[{Slot:0b}].tag.ItemLevel run function item:lore/base_name/without_itemlevel
execute if data block ~ ~ ~ Items[0].tag.UniqueName run data modify block ~ ~ ~ Items[0].tag.display.Lore append from block -40896 1 -40960 Text1
execute unless data block ~ ~ ~ Items[0].tag.UniqueName run data modify block ~ ~ ~ Items[0].tag.display.Name set from block -40896 1 -40960 Text1
