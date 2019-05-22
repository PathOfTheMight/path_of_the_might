#UniqueName
#execute if data block ~ ~ ~ {Items:[{Slot:0b,tag:{Rarity:'Normal'}}]} run data modify block -40692 1 -40700 Text1 set value '[{"nbt":"RecordItem.tag.UniqueName","block":"-40691 1 -40700","color":"white","italic":false}]'
#execute if data block ~ ~ ~ {Items:[{Slot:0b,tag:{Rarity:'Magic'}}]} run data modify block -40692 1 -40700 Text1 set value '[{"nbt":"RecordItem.tag.UniqueName","block":"-40691 1 -40700","color":"aqua","italic":false}]'
#execute if data block ~ ~ ~ {Items:[{Slot:0b,tag:{Rarity:'Rare'}}]} run data modify block -40692 1 -40700 Text1 set value '[{"nbt":"RecordItem.tag.UniqueName","block":"-40691 1 -40700","color":"gold","italic":false}]'
#execute if data block ~ ~ ~ {Items:[{Slot:0b,tag:{Rarity:'Unique'}}]} run data modify block -40692 1 -40700 Text1 set value '[{"nbt":"RecordItem.tag.UniqueName","block":"-40691 1 -40700","color":"light_purple","italic":false}]'
#data modify block ~ ~ ~ Items[0].tag.display.Name set from block -40692 1 -40700 Text1
data modify block ~ ~ ~ Items[0].tag.display.Name set from block ~ ~ ~ Items[0].tag.UniqueName