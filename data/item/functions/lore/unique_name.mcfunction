#UniqueName
#execute if data block ~ ~ ~ {Items:[{Slot:0b,tag:{Rarity:'Normal'}}]} run data modify block -40896 1 -40960 Text1 set value '[{"nbt":"ArmorItems[3].tag.UniqueName","entity":"00000000-0000-0000-0000-000000000000","color":"white","italic":false}]'
#execute if data block ~ ~ ~ {Items:[{Slot:0b,tag:{Rarity:'Magic'}}]} run data modify block -40896 1 -40960 Text1 set value '[{"nbt":"ArmorItems[3].tag.UniqueName","entity":"00000000-0000-0000-0000-000000000000","color":"aqua","italic":false}]'
#execute if data block ~ ~ ~ {Items:[{Slot:0b,tag:{Rarity:'Rare'}}]} run data modify block -40896 1 -40960 Text1 set value '[{"nbt":"ArmorItems[3].tag.UniqueName","entity":"00000000-0000-0000-0000-000000000000","color":"gold","italic":false}]'
#execute if data block ~ ~ ~ {Items:[{Slot:0b,tag:{Rarity:'Unique'}}]} run data modify block -40896 1 -40960 Text1 set value '[{"nbt":"ArmorItems[3].tag.UniqueName","entity":"00000000-0000-0000-0000-000000000000","color":"light_purple","italic":false}]'
#data modify block ~ ~ ~ Items[0].tag.display.Name set from block -40896 1 -40960 Text1
data modify block ~ ~ ~ Items[0].tag.display.Name set from block ~ ~ ~ Items[0].tag.UniqueName