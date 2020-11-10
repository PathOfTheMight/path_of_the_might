data modify storage items: Items set value [{id:"minecraft:cod",Count:1b,Slot:0b,tag:{NoHold:1b}},{id:"minecraft:cod",Count:1b,Slot:1b,tag:{NoHold:1b}},{id:"minecraft:cod",Count:1b,Slot:2b,tag:{NoHold:1b}},{id:"minecraft:cod",Count:1b,Slot:3b,tag:{NoHold:1b}},{id:"minecraft:cod",Count:1b,Slot:7b,tag:{NoHold:1b}},{id:"minecraft:cod",Count:1b,Slot:8b,tag:{NoHold:1b}},{id:"minecraft:cod",Count:1b,Slot:9b,tag:{NoHold:1b}},{id:"minecraft:cod",Count:1b,Slot:10b,tag:{NoHold:1b}},{id:"minecraft:cod",Count:1b,Slot:11b,tag:{NoHold:1b}},{id:"minecraft:cod",Count:1b,Slot:12b,tag:{NoHold:1b}},{id:"minecraft:cod",Count:1b,Slot:15b,tag:{NoHold:1b}},{id:"minecraft:cod",Count:1b,Slot:16b,tag:{NoHold:1b}},{id:"minecraft:cod",Count:1b,Slot:17b,tag:{NoHold:1b}},{id:"minecraft:cod",Count:1b,Slot:19b,tag:{NoHold:1b}},{id:"minecraft:cod",Count:1b,Slot:20b,tag:{NoHold:1b}},{id:"minecraft:cod",Count:1b,Slot:25b,tag:{NoHold:1b}},{id:"minecraft:cod",Count:1b,Slot:26b,tag:{NoHold:1b}}]
#data modify storage items: Items set value [{id:"minecraft:cod",Count:1b,Slot:0b,tag:{CustomModelData:1,NoHold:1b,EnderChest:0b,Weapon:1b,Fist:1b,WeaponSound:1b,display:{Name:'{"text":"<メインハンド>","italic":false,"bold":true,"color":"white"}',Lore:['{"text":"-------------","color":"white","bold":true,"italic":false}','{"text":"< 素手 >","color":"white","bold":true,"italic":false}','{"text":"物理ダメージ: ","color":"gray","bold":true,"italic":false,"extra":[{"text":"2-6","color":"white","bold":false,"italic":false}]}']}}},{id:"minecraft:cod",Count:1b,Slot:1b,tag:{CustomModelData:7,NoHold:1b,EnderChest:0b,Amulet:1b,Accessory:1b,AccessorySound:1b,display:{Name:'{"text":"<首>","italic":false,"bold":true,"color":"white"}'}}},{id:"minecraft:cod",Count:1b,Slot:2b,tag:{CustomModelData:3,NoHold:1b,EnderChest:0b,Helmet:1b,Armor:1b,ArmorSound:1b,display:{Name:'{"text":"<頭>","italic":false,"bold":true,"color":"white"}'}}},{id:"minecraft:cod",Count:1b,Slot:3b,tag:{CustomModelData:2,NoHold:1b,EnderChest:0b,Weapon:1b,Fist:1b,WeaponSound:1b,display:{Name:'{"text":"<オフハンド>","italic":false,"bold":true,"color":"white"}',Lore:['{"text":"-------------","color":"white","bold":true,"italic":false}','{"text":"< 素手 >","color":"white","bold":true,"italic":false}','{"text":"物理ダメージ: ","color":"gray","bold":true,"italic":false,"extra":[{"text":"2-6","color":"white","bold":false,"italic":false}]}']}}},{Slot:7b},{Slot:8b},{id:"minecraft:cod",Count:1b,Slot:9b,tag:{CustomModelData:8,NoHold:1b,EnderChest:0b,Ring:1b,Accessory:1b,AccessorySound:1b,display:{Name:'{"text":"<指>","italic":false,"bold":true,"color":"white"}'}}},{id:"minecraft:cod",Count:1b,Slot:10b,tag:{CustomModelData:5,NoHold:1b,EnderChest:0b,Gloves:1b,Armor:1b,ArmorSound:1b,display:{Name:'{"text":"<手>","italic":false,"bold":true,"color":"white"}'}}},{id:"minecraft:cod",Count:1b,Slot:11b,tag:{CustomModelData:4,NoHold:1b,EnderChest:0b,Chestplate:1b,Armor:1b,ArmorSound:1b,display:{Name:'{"text":"<胴体>","italic":false,"bold":true,"color":"white"}'}}},{id:"minecraft:cod",Count:1b,Slot:12b,tag:{CustomModelData:8,NoHold:1b,EnderChest:0b,Ring:1b,Accessory:1b,AccessorySound:1b,display:{Name:'{"text":"<指>","italic":false,"bold":true,"color":"white"}'}}},{Slot:16b},{Slot:17b},{Slot:18b},{Slot:19b},{Slot:20b},{id:"minecraft:cod",Count:1b,Slot:19b,tag:{CustomModelData:9,NoHold:1b,EnderChest:0b,Belt:1b,Accessory:1b,ArmorSound:1b,display:{Name:'{"text":"<腰>","italic":false,"bold":true,"color":"white"}'}}},{id:"minecraft:cod",Count:1b,Slot:20b,tag:{CustomModelData:6,NoHold:1b,EnderChest:0b,Boots:1b,Armor:1b,ArmorSound:1b,display:{Name:'{"text":"<足>","italic":false,"bold":true,"color":"white"}'}}}]
data modify storage items: Items append from entity @s EnderItems[]

function item:ui/ender_chest/playsound/reset

#Equipment
scoreboard players set #UpdateEquipment Number 0

execute store success score #Success Number run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItemsOld[{Slot:0b}] set from storage items: Items[{Slot:0b}]
execute if score #Success Number matches 1 run function item:ui/ender_chest/equipment/weapon1

execute store success score #Success Number run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItemsOld[{Slot:1b}] set from storage items: Items[{Slot:1b}]
execute if score #Success Number matches 1 run function item:ui/ender_chest/equipment/amulet

execute store success score #Success Number run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItemsOld[{Slot:2b}] set from storage items: Items[{Slot:2b}]
execute if score #Success Number matches 1 run function item:ui/ender_chest/equipment/helmet

execute store success score #Success Number run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItemsOld[{Slot:3b}] set from storage items: Items[{Slot:3b}]
execute if score #Success Number matches 1 run function item:ui/ender_chest/equipment/weapon2

execute store success score #Success Number run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItemsOld[{Slot:9b}] set from storage items: Items[{Slot:9b}]
execute if score #Success Number matches 1 run function item:ui/ender_chest/equipment/ring1

execute store success score #Success Number run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItemsOld[{Slot:10b}] set from storage items: Items[{Slot:10b}]
execute if score #Success Number matches 1 run function item:ui/ender_chest/equipment/gloves

execute store success score #Success Number run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItemsOld[{Slot:11b}] set from storage items: Items[{Slot:11b}]
execute if score #Success Number matches 1 run function item:ui/ender_chest/equipment/chestplate

execute store success score #Success Number run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItemsOld[{Slot:12b}] set from storage items: Items[{Slot:12b}]
execute if score #Success Number matches 1 run function item:ui/ender_chest/equipment/ring2

execute store success score #Success Number run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItemsOld[{Slot:19b}] set from storage items: Items[{Slot:19b}]
execute if score #Success Number matches 1 run function item:ui/ender_chest/equipment/belt

execute store success score #Success Number run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItemsOld[{Slot:20b}] set from storage items: Items[{Slot:20b}]
execute if score #Success Number matches 1 run function item:ui/ender_chest/equipment/boots

#Gem
execute store success score #Success Number run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItemsOld[{Slot:15b}] set from storage items: Items[{Slot:15b}]
execute if score #Success Number matches 1 run function item:ui/ender_chest/gem/base

execute store success score #Success Number run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItemsOld[{Slot:7b}] set from storage items: Items[{Slot:7b}]
execute if score #Success Number matches 1 run function item:ui/ender_chest/gem/gem1

execute store success score #Success Number run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItemsOld[{Slot:8b}] set from storage items: Items[{Slot:8b}]
execute if score #Success Number matches 1 run function item:ui/ender_chest/gem/gem2

execute store success score #Success Number run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItemsOld[{Slot:16b}] set from storage items: Items[{Slot:16b}]
execute if score #Success Number matches 1 run function item:ui/ender_chest/gem/gem3

execute store success score #Success Number run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItemsOld[{Slot:17b}] set from storage items: Items[{Slot:17b}]
execute if score #Success Number matches 1 run function item:ui/ender_chest/gem/gem4

execute store success score #Success Number run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItemsOld[{Slot:25b}] set from storage items: Items[{Slot:25b}]
execute if score #Success Number matches 1 run function item:ui/ender_chest/gem/gem5

execute store success score #Success Number run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItemsOld[{Slot:26b}] set from storage items: Items[{Slot:26b}]
execute if score #Success Number matches 1 run function item:ui/ender_chest/gem/gem6

data modify block 2 3 2 Items set from storage items: Items
loot replace entity @s enderchest.0 mine 2 3 2 debug_stick

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItems set from entity @s EnderItems
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EnderItemsOld set from entity @s EnderItems

clear @s #main:all{NoHold:1b}
function item:ui/ender_chest/playsound/playsound
