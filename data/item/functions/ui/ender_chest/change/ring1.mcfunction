execute if data entity @s EnderItems[{Slot:9b}] store success score #EnderChestError Number run data modify block -40694 1 -40700 Items[0] set from entity @s EnderItems[{Slot:9b}]
execute if data entity @s EnderItems[{Slot:9b}] run loot give @s mine -40694 1 -40700
replaceitem entity @s enderchest.9 cod{CustomModelData:8,NoHold:1b,EnderChest:1b,Ring1:1b,display:{Name:'{"text":"<指>","italic":false,"bold":true,"color":"white"}'}}
