execute if data entity @s EnderItems[{Slot:2b}] store success score #EnderChestError Number run data modify block -40694 1 -40700 Items[0] set from entity @s EnderItems[{Slot:2b}]
execute if data entity @s EnderItems[{Slot:2b}] run loot give @s mine -40694 1 -40700
replaceitem entity @s enderchest.2 cod{CustomModelData:3,NoHold:1b,EnderChest:1b,Helmet:1b,display:{Name:'{"text":"<頭>","italic":false,"bold":true,"color":"white"}'}}
