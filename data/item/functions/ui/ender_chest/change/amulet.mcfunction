execute if data entity @s EnderItems[{Slot:1b}] store success score #EnderChestError Number run data modify block -40694 1 -40700 Items[0] set from entity @s EnderItems[{Slot:1b}]
execute if data entity @s EnderItems[{Slot:1b}] run loot give @s mine -40694 1 -40700
replaceitem entity @s enderchest.1 cod{CustomModelData:7,NoHold:1b,EnderChest:1b,Amulet:1b,display:{Name:'{"text":"<首>","italic":false,"bold":true,"color":"white"}'}}
