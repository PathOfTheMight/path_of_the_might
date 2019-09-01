execute if data entity @s EnderItems[{Slot:10b}] store success score #EnderChestError Number run data modify block -40694 1 -40700 Items[0] set from entity @s EnderItems[{Slot:10b}]
execute if data entity @s EnderItems[{Slot:10b}] run loot give @s mine -40694 1 -40700
replaceitem entity @s enderchest.10 cod{CustomModelData:5,NoHold:1b,EnderChest:1b,Gloves:1b,display:{Name:'{"text":"<手>","italic":false,"bold":true,"color":"white"}'}}
