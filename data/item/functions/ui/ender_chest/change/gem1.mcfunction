#Gem確認
execute if data entity @s {EnderItems:[{Slot:7b},{Slot:15b,id:"minecraft:cod"}]} run scoreboard players set #EnderChestError Number 1
execute if data entity @s {EnderItems:[{Slot:7b},{Slot:15b,tag:{Gems:[{Slot:0b,Socket:"Black"}]}}]} run scoreboard players set #EnderChestError Number 1
execute if data entity @s {EnderItems:[{Slot:7b},{Slot:15b,tag:{Gems:[{Slot:0b,Socket:"Red"}]}}]} unless data entity @s {EnderItems:[{Slot:7b,tag:{Color:"Red"}}]} run scoreboard players set #EnderChestError Number 1
execute if data entity @s {EnderItems:[{Slot:7b},{Slot:15b,tag:{Gems:[{Slot:0b,Socket:"Green"}]}}]} unless data entity @s {EnderItems:[{Slot:7b,tag:{Color:"Green"}}]} run scoreboard players set #EnderChestError Number 1
execute if data entity @s {EnderItems:[{Slot:7b},{Slot:15b,tag:{Gems:[{Slot:0b,Socket:"Blue"}]}}]} unless data entity @s {EnderItems:[{Slot:7b,tag:{Color:"Blue"}}]} run scoreboard players set #EnderChestError Number 1
execute if data entity @s {EnderItems:[{Slot:7b,tag:{Color:"White"}},{Slot:15b,tag:{Gems:[{Slot:0b}]}}]} run scoreboard players set #EnderChestError Number 0
execute unless data entity @s {EnderItems:[{Slot:7b}]} run scoreboard players set #EnderChestError Number 2
#排出
execute if score #EnderChestError Number matches 1 run data modify block -40694 1 -40700 Items[0] set from entity @s EnderItems[{Slot:7b}]
execute if score #EnderChestError Number matches 1 run loot give @s mine -40694 1 -40700
#空スロットセット
execute if score #EnderChestError Number matches 1..2 if data entity @s {EnderItems:[{Slot:15b,id:"minecraft:cod"}]} run replaceitem entity @s enderchest.7 cod{CustomModelData:11,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<ジェムスロット>","italic":false,"bold":true,"color":"white"}'}}
execute if score #EnderChestError Number matches 1..2 if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:0b,Socket:"Black"}]}}]} run replaceitem entity @s enderchest.7 cod{CustomModelData:11,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<--->","italic":false,"bold":true,"color":"white"}'}}
execute if score #EnderChestError Number matches 1..2 if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:0b,Socket:"Red"}]}}]} run replaceitem entity @s enderchest.7 cod{CustomModelData:12,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<赤のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}
execute if score #EnderChestError Number matches 1..2 if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:0b,Socket:"Green"}]}}]} run replaceitem entity @s enderchest.7 cod{CustomModelData:13,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<緑のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}
execute if score #EnderChestError Number matches 1..2 if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:0b,Socket:"Blue"}]}}]} run replaceitem entity @s enderchest.7 cod{CustomModelData:14,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<青のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}
execute if score #EnderChestError Number matches 1..2 if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:0b,Socket:"White"}]}}]} run replaceitem entity @s enderchest.7 cod{CustomModelData:15,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<白のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}
#装備Lore更新
data modify block -40691 2 -40700 RecordItem set from entity @s EnderItems[{Slot:15b}]
execute unless score #EnderChestError Number matches 1..2 run data modify block -40691 2 -40700 RecordItem.tag.Gems[{Slot:0b}].tag set from entity @s EnderItems[{Slot:7b}].tag
execute if score #EnderChestError Number matches 1..2 run data remove block -40691 2 -40700 RecordItem.tag.Gems[{Slot:0b}].tag
function item:lore/equipment/main
data modify block -40694 1 -40700 Items[0] set from block -40691 2 -40700 RecordItem
loot replace entity @s enderchest.15 1 mine -40694 1 -40700

execute store result score #EnderChest7 Number store result entity @s EnderItems[{Slot:7b}].tag.EnderChestTick int 1 run time query gametime
