#Armor
execute if data block ~ ~ ~ Items[0].tag.Armor run function item:lore/base_stats/armor/armor/main
#Evasion
execute if data block ~ ~ ~ Items[0].tag.Evasion run data modify block -40896 1 -40960 Text1 set value '[{"text":"エヴァージョン: ","color":"gray","italic":false},{"nbt":"ArmorItems[3].tag.Evasion.Total","entity":"00000000-0000-0000-0000-000000000000","color":"green","italic":false}]'
execute if data block ~ ~ ~ Items[0].tag.Evasion run data modify block ~ ~ ~ Items[0].tag.display.Lore append from block -40896 1 -40960 Text1
#ES
execute if data block ~ ~ ~ Items[0].tag.EnergyShield run data modify block -40896 1 -40960 Text1 set value '[{"text":"エナジーシールド: ","color":"gray","italic":false},{"nbt":"ArmorItems[3].tag.EnergyShield.Total","entity":"00000000-0000-0000-0000-000000000000","color":"aqua","italic":false}]'
execute if data block ~ ~ ~ Items[0].tag.EnergyShield run data modify block ~ ~ ~ Items[0].tag.display.Lore append from block -40896 1 -40960 Text1
