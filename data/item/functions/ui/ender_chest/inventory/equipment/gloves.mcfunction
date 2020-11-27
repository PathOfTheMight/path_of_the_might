execute unless data storage items: Items[{Slot:1b,tag:{Gloves:10b}}] run data modify block 2 2 2 Items[0] set from storage items: Items[{Slot:10b}]
execute unless data storage items: Items[{Slot:1b,tag:{Gloves:10b}}] run function item:ui/ender_chest/give_back
execute unless data storage items: Items[{Slot:1b,tag:{Gloves:10b}}] run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:10b,tag:{CustomModelData:5,NoHold:1b,display:{Name:'{"text":"<手>","italic":false,"bold":true,"color":"white"}'}}}

scoreboard players set #UpdateEquipment Number 1
scoreboard players set #ArmorSound Number 1
