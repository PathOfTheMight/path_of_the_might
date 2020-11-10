execute unless data storage items: Items[{Slot:12b,tag:{Ring:1b}}] run data modify block 2 2 2 Items[0] set from storage items: Items[{Slot:12b}]
execute unless data storage items: Items[{Slot:12b,tag:{Ring:1b}}] run function item:ui/ender_chest/give_back
execute unless data storage items: Items[{Slot:12b,tag:{Ring:1b}}] run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:12b,tag:{CustomModelData:8,NoHold:1b,display:{Name:'{"text":"<指>","italic":false,"bold":true,"color":"white"}'}}}

scoreboard players set #UpdateEquipment Number 1
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.8
