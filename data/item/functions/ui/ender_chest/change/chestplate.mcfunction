execute if data entity @s EnderItems[{Slot:11b}] store success score #EnderChestError Number run data modify block -40694 1 -40700 Items[0] set from entity @s EnderItems[{Slot:11b}]
execute if data entity @s EnderItems[{Slot:11b}] run loot give @s mine -40694 1 -40700
replaceitem entity @s enderchest.11 cod{CustomModelData:4,NoHold:1b,EnderChest:1b,Chestplate:1b,display:{Name:'{"text":"<胴体>","italic":false,"bold":true,"color":"white"}'}}

