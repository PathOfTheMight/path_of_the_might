execute if data entity @s EnderItems[{Slot:3b}] store success score #EnderChestError Number run data modify block -40694 1 -40700 Items[0] set from entity @s EnderItems[{Slot:3b}]
execute if data entity @s EnderItems[{Slot:3b}] run loot give @s mine -40694 1 -40700
replaceitem entity @s enderchest.3 cod{CustomModelData:2,NoHold:1b,EnderChest:1b,Weapon2:1b,display:{Name:'{"text":"<オフハンド>","italic":false,"bold":true,"color":"white"}'}}
