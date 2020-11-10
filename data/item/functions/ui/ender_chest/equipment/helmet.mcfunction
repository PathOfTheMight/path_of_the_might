execute unless data storage items: Items[{Slot:2b,tag:{Helmet:1b}}] run data modify block 2 2 2 Items[0] set from storage items: Items[{Slot:2b}]
execute unless data storage items: Items[{Slot:2b,tag:{Helmet:1b}}] run function item:ui/ender_chest/give_back
execute unless data storage items: Items[{Slot:2b,tag:{Helmet:1b}}] run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:2b,tag:{CustomModelData:3,NoHold:1b,display:{Name:'{"text":"<頭>","italic":false,"bold":true,"color":"white"}'}}}

scoreboard players set #UpdateEquipment Number 1
scoreboard players set #Armor Number 1
