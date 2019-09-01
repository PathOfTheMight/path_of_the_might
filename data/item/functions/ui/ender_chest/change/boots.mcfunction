execute if data entity @s EnderItems[{Slot:20b}] store success score #EnderChestError Number run data modify block -40694 1 -40700 Items[0] set from entity @s EnderItems[{Slot:20b}]
execute if data entity @s EnderItems[{Slot:20b}] run loot give @s mine -40694 1 -40700
replaceitem entity @s enderchest.20 cod{CustomModelData:6,NoHold:1b,EnderChest:1b,Boots:1b,display:{Name:'{"text":"<足>","italic":false,"bold":true,"color":"white"}'}}
