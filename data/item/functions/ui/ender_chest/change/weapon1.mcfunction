execute if data entity @s EnderItems[{Slot:0b}] store success score #EnderChestError Number run data modify block -40694 1 -40700 Items[0] set from entity @s EnderItems[{Slot:0b}]
execute if data entity @s EnderItems[{Slot:0b}] run loot give @s mine -40694 1 -40700
replaceitem entity @s enderchest.0 cod{CustomModelData:1,NoHold:1b,EnderChest:1b,Weapon1:1b,display:{Name:'{"text":"<メインハンド>","italic":false,"bold":true,"color":"white"}'}}
