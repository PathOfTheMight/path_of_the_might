scoreboard players set #Flag Number 0
data remove storage gem: Gem
data modify storage gem: Gem set from storage items: Items[{Slot:15b}].tag.Gems[2]
execute unless data storage gem: Gem run scoreboard players set #Flag Number 1
execute if data storage gem: {Gem:{Socket:"Red"}} unless data storage items: Items[{Slot:16b,tag:{Color:"Red"}}] unless data storage items: Items[{Slot:16b,tag:{Color:"White"}}] run scoreboard players set #Flag Number 1
execute if data storage gem: {Gem:{Socket:"Green"}} unless data storage items: Items[{Slot:16b,tag:{Color:"Green"}}] unless data storage items: Items[{Slot:16b,tag:{Color:"White"}}] run scoreboard players set #Flag Number 1
execute if data storage gem: {Gem:{Socket:"Blue"}} unless data storage items: Items[{Slot:16b,tag:{Color:"Blue"}}] unless data storage items: Items[{Slot:16b,tag:{Color:"White"}}] run scoreboard players set #Flag Number 1
execute if data storage gem: {Gem:{Socket:"White"}} unless data storage items: Items[{id:"minecraft:cake",Slot:16b,tag:{Gem:1b}}] run scoreboard players set #Flag Number 1

execute if score #Flag Number matches 1 run data modify block 2 2 2 Items[0] set from storage items: Items[{Slot:16b}]
execute if score #Flag Number matches 1 run function item:ui/ender_chest/give_back
execute if score #Flag Number matches 1 unless data storage gem: Gem run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:16b,tag:{CustomModelData:11,NoHold:1b,EnderChest:0b,Gem:1b,GemSound:1b,display:{Name:'{"text":"<--->","italic":false,"bold":true,"color":"white"}'}}}
execute if score #Flag Number matches 1 if data storage gem: {Gem:{Socket:"Red"}} run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:16b,tag:{CustomModelData:12,NoHold:1b,display:{Name:'{"text":"<赤のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}}
execute if score #Flag Number matches 1 if data storage gem: {Gem:{Socket:"Green"}} run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:16b,tag:{CustomModelData:13,NoHold:1b,display:{Name:'{"text":"<緑のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}}
execute if score #Flag Number matches 1 if data storage gem: {Gem:{Socket:"Blue"}} run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:16b,tag:{CustomModelData:14,NoHold:1b,display:{Name:'{"text":"<青のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}}
execute if score #Flag Number matches 1 if data storage gem: {Gem:{Socket:"White"}} run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:16b,tag:{CustomModelData:15,NoHold:1b,display:{Name:'{"text":"<白のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}}

#装備Lore更新
execute if data storage gem: Gem run data modify storage item: Item set from storage items: Items[{Slot:15b}]
execute if score #Flag Number matches 0 if data storage gem: Gem run data modify storage item: Item.tag.Gems[2].tag set from storage items: Items[{Slot:16b}].tag
execute if score #Flag Number matches 1 if data storage gem: Gem run data remove storage item: Item.tag.Gems[2].tag
execute if data storage gem: Gem run function item:lore/equipment/main
execute if data storage gem: Gem run data modify storage items: Items[{Slot:15b}] set from storage item: Item

scoreboard players set #GemSound Number 1
