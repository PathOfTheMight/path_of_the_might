execute if data entity @s EnderItems[{Slot:19b}] store success score #EnderChestError Number run data modify block -40694 1 -40700 Items[0] set from entity @s EnderItems[{Slot:19b}]
execute if data entity @s EnderItems[{Slot:19b}] run loot give @s mine -40694 1 -40700
replaceitem entity @s enderchest.19 cod{CustomModelData:9,NoHold:1b,EnderChest:1b,Belt:1b,display:{Name:'{"text":"<腰>","italic":false,"bold":true,"color":"white"}'}}
