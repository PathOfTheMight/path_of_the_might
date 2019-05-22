#Armor
execute if data block ~ ~ ~ Items[0].tag.Armor run function item:lore/equipment/base_stats/armor/armor/main
#Evasion
execute if data block ~ ~ ~ Items[0].tag.Evasion run data modify block -40692 1 -40700 Text1 set value '[{"text":"エヴァージョン: ","color":"gray","italic":false},{"nbt":"RecordItem.tag.Evasion.Total","block":"-40691 1 -40700","color":"green","italic":false}]'
execute if data block ~ ~ ~ Items[0].tag.Evasion run data modify block ~ ~ ~ Items[0].tag.display.Lore append from block -40692 1 -40700 Text1
#ES
execute if data block ~ ~ ~ Items[0].tag.EnergyShield run data modify block -40692 1 -40700 Text1 set value '[{"text":"エナジーシールド: ","color":"gray","italic":false},{"nbt":"RecordItem.tag.EnergyShield.Total","block":"-40691 1 -40700","color":"aqua","italic":false}]'
execute if data block ~ ~ ~ Items[0].tag.EnergyShield run data modify block ~ ~ ~ Items[0].tag.display.Lore append from block -40692 1 -40700 Text1
