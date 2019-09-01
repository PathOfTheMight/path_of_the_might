#消去
execute store result score #EnderChest Number run clear @s #main:all{EnderChest:1b} 0
clear @s minecraft:cod
#ステータス集計
execute if score #EnderChest Number matches 0 if entity @s[tag=EnderChest] run function status:equipments/fork_equipment
#1tickずらす
tag @s remove EnderChest
execute if score #EnderChest Number matches 1.. run tag @s add EnderChest
#EnderChestタグ　EncerChest内&掴み時1
execute store result entity @s EnderItems[{}].tag.EnderChest byte 1 run scoreboard players get #1 Number
execute store result entity @s Inventory[{tag:{EnderChest:1b}}].tag.EnderChest byte 1 run scoreboard players get #0 Number
#Equipments
execute unless entity @s[nbt={EnderItems:[{Slot:0b,tag:{Weapon1:1b}}]}] run function item:ui/ender_chest/change/weapon1
execute unless entity @s[nbt={EnderItems:[{Slot:1b,tag:{Amulet:1b}}]}] run function item:ui/ender_chest/change/amulet
execute unless entity @s[nbt={EnderItems:[{Slot:2b,tag:{Helmet:1b}}]}] run function item:ui/ender_chest/change/helmet
execute unless entity @s[nbt={EnderItems:[{Slot:3b,tag:{Weapon2:1b}}]}] run function item:ui/ender_chest/change/weapon2
execute unless entity @s[nbt={EnderItems:[{Slot:9b,tag:{Ring1:1b}}]}] run function item:ui/ender_chest/change/ring1
execute unless entity @s[nbt={EnderItems:[{Slot:10b,tag:{Gloves:1b}}]}] run function item:ui/ender_chest/change/gloves
execute unless entity @s[nbt={EnderItems:[{Slot:11b,tag:{Chestplate:1b}}]}] run function item:ui/ender_chest/change/chestplate
execute unless entity @s[nbt={EnderItems:[{Slot:12b,tag:{Ring2:1b}}]}] run function item:ui/ender_chest/change/ring2
execute unless entity @s[nbt={EnderItems:[{Slot:19b,tag:{Belt:1b}}]}] run function item:ui/ender_chest/change/belt
execute unless entity @s[nbt={EnderItems:[{Slot:20b,tag:{Boots:1b}}]}] run function item:ui/ender_chest/change/boots
#Gem
execute store result score #TempEnderChest7 Number run data get entity @s EnderItems[{Slot:7b}].tag.EnderChestTick
execute unless score #EnderChest7 Number = #TempEnderChest7 Number run function item:ui/ender_chest/change/gem1
execute store result score #TempEnderChest8 Number run data get entity @s EnderItems[{Slot:8b}].tag.EnderChestTick
execute unless score #EnderChest8 Number = #TempEnderChest8 Number run function item:ui/ender_chest/change/gem2
execute store result score #TempEnderChest16 Number run data get entity @s EnderItems[{Slot:16b}].tag.EnderChestTick
execute unless score #EnderChest16 Number = #TempEnderChest16 Number run function item:ui/ender_chest/change/gem3
execute store result score #TempEnderChest17 Number run data get entity @s EnderItems[{Slot:17b}].tag.EnderChestTick
execute unless score #EnderChest17 Number = #TempEnderChest17 Number run function item:ui/ender_chest/change/gem4
execute store result score #TempEnderChest25 Number run data get entity @s EnderItems[{Slot:25b}].tag.EnderChestTick
execute unless score #EnderChest25 Number = #TempEnderChest25 Number run function item:ui/ender_chest/change/gem5
execute store result score #TempEnderChest26 Number run data get entity @s EnderItems[{Slot:26b}].tag.EnderChestTick
execute unless score #EnderChest26 Number = #TempEnderChest26 Number run function item:ui/ender_chest/change/gem6
#GemEquipment
execute store result score #TempEnderChest15 Number run data get entity @s EnderItems[{Slot:15b}].tag.EnderChestTick
execute unless score #EnderChest15 Number = #TempEnderChest15 Number run function item:ui/ender_chest/change/gem_update
#execute unless entity @s[nbt={EnderItems:[{Slot:7b,tag:{Gem:1b}}]}] run function item:ui/ender_chest/change/gem1
#execute unless entity @s[nbt={EnderItems:[{Slot:8b,tag:{Gem:1b}}]}] run function item:ui/ender_chest/change/gem2
#execute unless entity @s[nbt={EnderItems:[{Slot:16b,tag:{Gem:1b}}]}] run function item:ui/ender_chest/change/gem3
#execute unless entity @s[nbt={EnderItems:[{Slot:17b,tag:{Gem:1b}}]}] run function item:ui/ender_chest/change/gem4
#execute unless entity @s[nbt={EnderItems:[{Slot:25b,tag:{Gem:1b}}]}] run function item:ui/ender_chest/change/gem5
#execute unless entity @s[nbt={EnderItems:[{Slot:26b,tag:{Gem:1b}}]}] run function item:ui/ender_chest/change/gem6
#Error
execute if score #EnderChestError Number matches 1 run playsound minecraft:block.dispenser.fail master @s ~ ~ ~ 1 1
#足のテクスチャを反映
execute store result score #EnderChestError Number store result entity @s Inventory[{Slot:100b}].tag.Display int 1 run time query gametime
