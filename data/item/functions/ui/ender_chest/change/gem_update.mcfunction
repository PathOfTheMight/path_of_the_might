#排出
execute if data entity @s EnderItems[{Slot:15b}] unless data entity @s EnderItems[{Slot:15b,tag:{Equipment:1b}}] store success score #EnderChestError Number run data modify block -40694 1 -40700 Items[0] set from entity @s EnderItems[{Slot:15b}]
execute if data entity @s EnderItems[{Slot:15b}] unless data entity @s EnderItems[{Slot:15b,tag:{Equipment:1b}}] run loot give @s mine -40694 1 -40700
execute unless data entity @s EnderItems[{Slot:15b,tag:{Equipment:1b}}] run replaceitem entity @s enderchest.15 cod{CustomModelData:11,NoHold:1b,EnderChest:1b,Equipment:1b,display:{Name:'{"text":"<ジェムクラフトベンチ>","italic":false,"bold":true,"color":"white"}'}}
#shulker_box初期化
data modify block -40694 2 -40700 Items set from entity @s EnderItems 
data modify block -40694 2 -40700 Items[{tag:{Gem:1b}}].id set value "minecraft:cake"
#Gem1
execute if data entity @s {EnderItems:[{Slot:15b,id:"minecraft:cod"}]} run replaceitem block -40694 2 -40700 container.7 minecraft:cod{CustomModelData:11,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<ジェムスロット>","italic":false,"bold":true,"color":"white"}'}}
execute if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:0b,Socket:"Black"}]}}]} run replaceitem block -40694 2 -40700 container.7 minecraft:cod{CustomModelData:11,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<--->","italic":false,"bold":true,"color":"white"}'}}
execute if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:0b,Socket:"Red"}]}}]} unless data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:0b,tag:{}}]}}]} run replaceitem block -40694 2 -40700 container.7 minecraft:cod{CustomModelData:12,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<赤のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}
execute if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:0b,Socket:"Green"}]}}]} unless data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:0b,tag:{}}]}}]} run replaceitem block -40694 2 -40700 container.7 minecraft:cod{CustomModelData:13,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<緑のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}
execute if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:0b,Socket:"Blue"}]}}]} unless data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:0b,tag:{}}]}}]} run replaceitem block -40694 2 -40700 container.7 minecraft:cod{CustomModelData:14,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<青のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}
execute if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:0b,Socket:"White"}]}}]} unless data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:0b,tag:{}}]}}]} run replaceitem block -40694 2 -40700 container.7 minecraft:cod{CustomModelData:15,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<白のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}
execute if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:0b,tag:{}}]}}]} run data modify block -40694 2 -40700 Items[{Slot:7b}].tag set from entity @s EnderItems[{Slot:15b}].tag.Gems[{Slot:0b}].tag
execute store result block -40694 2 -40700 Items[{Slot:7b}].tag.EnderChestTick int 1 run scoreboard players get #EnderChest7 Number
#Gem2
execute if data entity @s {EnderItems:[{Slot:15b,id:"minecraft:cod"}]} run replaceitem block -40694 2 -40700 container.8 minecraft:cod{CustomModelData:11,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<ジェムスロット>","italic":false,"bold":true,"color":"white"}'}}
execute if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:1b,Socket:"Black"}]}}]} run replaceitem block -40694 2 -40700 container.8 minecraft:cod{CustomModelData:11,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<--->","italic":false,"bold":true,"color":"white"}'}}
execute if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:1b,Socket:"Red"}]}}]} unless data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:1b,tag:{}}]}}]} run replaceitem block -40694 2 -40700 container.8 minecraft:cod{CustomModelData:12,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<赤のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}
execute if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:1b,Socket:"Green"}]}}]} unless data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:1b,tag:{}}]}}]} run replaceitem block -40694 2 -40700 container.8 minecraft:cod{CustomModelData:13,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<緑のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}
execute if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:1b,Socket:"Blue"}]}}]} unless data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:1b,tag:{}}]}}]} run replaceitem block -40694 2 -40700 container.8 minecraft:cod{CustomModelData:14,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<青のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}
execute if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:1b,Socket:"White"}]}}]} unless data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:1b,tag:{}}]}}]} run replaceitem block -40694 2 -40700 container.8 minecraft:cod{CustomModelData:15,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<白のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}
execute if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:1b,tag:{}}]}}]} run data modify block -40694 2 -40700 Items[{Slot:8b}].tag set from entity @s EnderItems[{Slot:15b}].tag.Gems[{Slot:1b}].tag
execute store result block -40694 2 -40700 Items[{Slot:8b}].tag.EnderChestTick int 1 run scoreboard players get #EnderChest8 Number
#Gem3
execute if data entity @s {EnderItems:[{Slot:15b,id:"minecraft:cod"}]} run replaceitem block -40694 2 -40700 container.16 minecraft:cod{CustomModelData:11,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<ジェムスロット>","italic":false,"bold":true,"color":"white"}'}}
execute if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:2b,Socket:"Black"}]}}]} run replaceitem block -40694 2 -40700 container.16 minecraft:cod{CustomModelData:11,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<--->","italic":false,"bold":true,"color":"white"}'}}
execute if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:2b,Socket:"Red"}]}}]} unless data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:2b,tag:{}}]}}]} run replaceitem block -40694 2 -40700 container.16 minecraft:cod{CustomModelData:12,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<赤のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}
execute if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:2b,Socket:"Green"}]}}]} unless data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:2b,tag:{}}]}}]} run replaceitem block -40694 2 -40700 container.16 minecraft:cod{CustomModelData:13,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<緑のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}
execute if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:2b,Socket:"Blue"}]}}]} unless data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:2b,tag:{}}]}}]} run replaceitem block -40694 2 -40700 container.16 minecraft:cod{CustomModelData:14,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<青のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}
execute if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:2b,Socket:"White"}]}}]} unless data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:2b,tag:{}}]}}]} run replaceitem block -40694 2 -40700 container.16 minecraft:cod{CustomModelData:15,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<白のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}
execute if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:2b,tag:{}}]}}]} run data modify block -40694 2 -40700 Items[{Slot:16b}].tag set from entity @s EnderItems[{Slot:15b}].tag.Gems[{Slot:2b}].tag
execute store result block -40694 2 -40700 Items[{Slot:16b}].tag.EnderChestTick int 1 run scoreboard players get #EnderChest16 Number
#Gem4
execute if data entity @s {EnderItems:[{Slot:15b,id:"minecraft:cod"}]} run replaceitem block -40694 2 -40700 container.17 minecraft:cod{CustomModelData:11,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<ジェムスロット>","italic":false,"bold":true,"color":"white"}'}}
execute if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:3b,Socket:"Black"}]}}]} run replaceitem block -40694 2 -40700 container.17 minecraft:cod{CustomModelData:11,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<--->","italic":false,"bold":true,"color":"white"}'}}
execute if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:3b,Socket:"Red"}]}}]} unless data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:3b,tag:{}}]}}]} run replaceitem block -40694 2 -40700 container.17 minecraft:cod{CustomModelData:12,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<赤のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}
execute if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:3b,Socket:"Green"}]}}]} unless data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:3b,tag:{}}]}}]} run replaceitem block -40694 2 -40700 container.17 minecraft:cod{CustomModelData:13,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<緑のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}
execute if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:3b,Socket:"Blue"}]}}]} unless data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:3b,tag:{}}]}}]} run replaceitem block -40694 2 -40700 container.17 minecraft:cod{CustomModelData:14,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<青のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}
execute if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:3b,Socket:"White"}]}}]} unless data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:3b,tag:{}}]}}]} run replaceitem block -40694 2 -40700 container.17 minecraft:cod{CustomModelData:15,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<白のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}
execute if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:3b,tag:{}}]}}]} run data modify block -40694 2 -40700 Items[{Slot:17b}].tag set from entity @s EnderItems[{Slot:15b}].tag.Gems[{Slot:3b}].tag
execute store result block -40694 2 -40700 Items[{Slot:17b}].tag.EnderChestTick int 1 run scoreboard players get #EnderChest17 Number
#Gem5
execute if data entity @s {EnderItems:[{Slot:15b,id:"minecraft:cod"}]} run replaceitem block -40694 2 -40700 container.25 minecraft:cod{CustomModelData:11,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<ジェムスロット>","italic":false,"bold":true,"color":"white"}'}}
execute if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:4b,Socket:"Black"}]}}]} run replaceitem block -40694 2 -40700 container.25 minecraft:cod{CustomModelData:11,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<--->","italic":false,"bold":true,"color":"white"}'}}
execute if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:4b,Socket:"Red"}]}}]} unless data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:4b,tag:{}}]}}]} run replaceitem block -40694 2 -40700 container.25 minecraft:cod{CustomModelData:12,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<赤のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}
execute if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:4b,Socket:"Green"}]}}]} unless data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:4b,tag:{}}]}}]} run replaceitem block -40694 2 -40700 container.25 minecraft:cod{CustomModelData:13,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<緑のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}
execute if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:4b,Socket:"Blue"}]}}]} unless data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:4b,tag:{}}]}}]} run replaceitem block -40694 2 -40700 container.25 minecraft:cod{CustomModelData:14,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<青のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}
execute if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:4b,Socket:"White"}]}}]} unless data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:4b,tag:{}}]}}]} run replaceitem block -40694 2 -40700 container.25 minecraft:cod{CustomModelData:15,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<白のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}
execute if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:4b,tag:{}}]}}]} run data modify block -40694 2 -40700 Items[{Slot:25b}].tag set from entity @s EnderItems[{Slot:15b}].tag.Gems[{Slot:4b}].tag
execute store result block -40694 2 -40700 Items[{Slot:25b}].tag.EnderChestTick int 1 run scoreboard players get #EnderChest25 Number
#Gem6
execute if data entity @s {EnderItems:[{Slot:15b,id:"minecraft:cod"}]} run replaceitem block -40694 2 -40700 container.26 minecraft:cod{CustomModelData:11,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<ジェムスロット>","italic":false,"bold":true,"color":"white"}'}}
execute if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:5b,Socket:"Black"}]}}]} run replaceitem block -40694 2 -40700 container.26 minecraft:cod{CustomModelData:11,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<--->","italic":false,"bold":true,"color":"white"}'}}
execute if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:5b,Socket:"Red"}]}}]} unless data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:5b,tag:{}}]}}]} run replaceitem block -40694 2 -40700 container.26 minecraft:cod{CustomModelData:12,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<赤のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}
execute if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:5b,Socket:"Green"}]}}]} unless data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:5b,tag:{}}]}}]} run replaceitem block -40694 2 -40700 container.26 minecraft:cod{CustomModelData:13,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<緑のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}
execute if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:5b,Socket:"Blue"}]}}]} unless data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:5b,tag:{}}]}}]} run replaceitem block -40694 2 -40700 container.26 minecraft:cod{CustomModelData:14,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<青のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}
execute if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:5b,Socket:"White"}]}}]} unless data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:5b,tag:{}}]}}]} run replaceitem block -40694 2 -40700 container.26 minecraft:cod{CustomModelData:15,NoHold:1b,EnderChest:1b,Gem:1b,display:{Name:'{"text":"<白のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}
execute if data entity @s {EnderItems:[{Slot:15b,tag:{Gems:[{Slot:5b,tag:{}}]}}]} run data modify block -40694 2 -40700 Items[{Slot:26b}].tag set from entity @s EnderItems[{Slot:15b}].tag.Gems[{Slot:5b}].tag
execute store result block -40694 2 -40700 Items[{Slot:26b}].tag.EnderChestTick int 1 run scoreboard players get #EnderChest26 Number
#エンダーチェストにコピー
loot replace entity @s enderchest.0 mine -40694 2 -40700

execute store result score #EnderChest15 Number store result entity @s EnderItems[{Slot:15b}].tag.EnderChestTick int 1 run time query gametime