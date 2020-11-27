data modify storage items: Items set value [{id:"minecraft:cod",Count:1b,Slot:0b,tag:{NoHold:1b}},{id:"minecraft:cod",Count:1b,Slot:1b,tag:{NoHold:1b}},{id:"minecraft:cod",Count:1b,Slot:2b,tag:{NoHold:1b}},{id:"minecraft:cod",Count:1b,Slot:3b,tag:{NoHold:1b}},{id:"minecraft:cod",Count:1b,Slot:7b,tag:{NoHold:1b}},{id:"minecraft:cod",Count:1b,Slot:8b,tag:{NoHold:1b}},{id:"minecraft:cod",Count:1b,Slot:9b,tag:{NoHold:1b}},{id:"minecraft:cod",Count:1b,Slot:10b,tag:{NoHold:1b}},{id:"minecraft:cod",Count:1b,Slot:11b,tag:{NoHold:1b}},{id:"minecraft:cod",Count:1b,Slot:12b,tag:{NoHold:1b}},{id:"minecraft:cod",Count:1b,Slot:15b,tag:{NoHold:1b}},{id:"minecraft:cod",Count:1b,Slot:16b,tag:{NoHold:1b}},{id:"minecraft:cod",Count:1b,Slot:17b,tag:{NoHold:1b}},{id:"minecraft:cod",Count:1b,Slot:19b,tag:{NoHold:1b}},{id:"minecraft:cod",Count:1b,Slot:20b,tag:{NoHold:1b}},{id:"minecraft:cod",Count:1b,Slot:23b,tag:{NoHold:1b}},{id:"minecraft:cod",Count:1b,Slot:25b,tag:{NoHold:1b}},{id:"minecraft:cod",Count:1b,Slot:26b,tag:{NoHold:1b}}]
data modify storage items: Items append from entity @s EnderItems[]

function item:ui/ender_chest/playsound/reset

#Equipment
scoreboard players set #UpdateEquipment Number 0

execute store success score #Success Number run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItemsOld[{Slot:0b}] set from storage items: Items[{Slot:0b}]
execute if score #Success Number matches 1 run function item:ui/ender_chest/inventory/equipment/weapon1

execute store success score #Success Number run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItemsOld[{Slot:1b}] set from storage items: Items[{Slot:1b}]
execute if score #Success Number matches 1 run function item:ui/ender_chest/inventory/equipment/amulet

execute store success score #Success Number run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItemsOld[{Slot:2b}] set from storage items: Items[{Slot:2b}]
execute if score #Success Number matches 1 run function item:ui/ender_chest/inventory/equipment/helmet

execute store success score #Success Number run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItemsOld[{Slot:3b}] set from storage items: Items[{Slot:3b}]
execute if score #Success Number matches 1 run function item:ui/ender_chest/inventory/equipment/weapon2

execute store success score #Success Number run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItemsOld[{Slot:9b}] set from storage items: Items[{Slot:9b}]
execute if score #Success Number matches 1 run function item:ui/ender_chest/inventory/equipment/ring1

execute store success score #Success Number run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItemsOld[{Slot:10b}] set from storage items: Items[{Slot:10b}]
execute if score #Success Number matches 1 run function item:ui/ender_chest/inventory/equipment/gloves

execute store success score #Success Number run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItemsOld[{Slot:11b}] set from storage items: Items[{Slot:11b}]
execute if score #Success Number matches 1 run function item:ui/ender_chest/inventory/equipment/chestplate

execute store success score #Success Number run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItemsOld[{Slot:12b}] set from storage items: Items[{Slot:12b}]
execute if score #Success Number matches 1 run function item:ui/ender_chest/inventory/equipment/ring2

execute store success score #Success Number run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItemsOld[{Slot:19b}] set from storage items: Items[{Slot:19b}]
execute if score #Success Number matches 1 run function item:ui/ender_chest/inventory/equipment/belt

execute store success score #Success Number run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItemsOld[{Slot:20b}] set from storage items: Items[{Slot:20b}]
execute if score #Success Number matches 1 run function item:ui/ender_chest/inventory/equipment/boots

#Gem
execute store success score #Success Number run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItemsOld[{Slot:15b}] set from storage items: Items[{Slot:15b}]
execute if score #Success Number matches 1 run function item:ui/ender_chest/inventory/gem/base

execute store success score #Success Number run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItemsOld[{Slot:7b}] set from storage items: Items[{Slot:7b}]
execute if score #Success Number matches 1 run function item:ui/ender_chest/inventory/gem/gem1

execute store success score #Success Number run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItemsOld[{Slot:8b}] set from storage items: Items[{Slot:8b}]
execute if score #Success Number matches 1 run function item:ui/ender_chest/inventory/gem/gem2

execute store success score #Success Number run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItemsOld[{Slot:16b}] set from storage items: Items[{Slot:16b}]
execute if score #Success Number matches 1 run function item:ui/ender_chest/inventory/gem/gem3

execute store success score #Success Number run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItemsOld[{Slot:17b}] set from storage items: Items[{Slot:17b}]
execute if score #Success Number matches 1 run function item:ui/ender_chest/inventory/gem/gem4

execute store success score #Success Number run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItemsOld[{Slot:25b}] set from storage items: Items[{Slot:25b}]
execute if score #Success Number matches 1 run function item:ui/ender_chest/inventory/gem/gem5

execute store success score #Success Number run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItemsOld[{Slot:26b}] set from storage items: Items[{Slot:26b}]
execute if score #Success Number matches 1 run function item:ui/ender_chest/inventory/gem/gem6

#Skill切り替え
execute store success score #Success Number run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItemsOld[{Slot:23b}] set from storage items: Items[{Slot:23b}]
execute if score #Success Number matches 1 run function item:ui/ender_chest/inventory/show_skill

data modify block 2 3 2 Items set from storage items: Items
loot replace entity @s enderchest.0 mine 2 3 2 debug_stick

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItems set from entity @s EnderItems
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItemsOld set from entity @s EnderItems

clear @s #main:all{NoHold:1b}
function item:ui/ender_chest/playsound/playsound

#ステータス計算
execute if score #UpdateEquipment Number matches 1 run function status:equipments/main
