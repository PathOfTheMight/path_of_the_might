execute unless data storage items: Items[{Slot:15b,tag:{Equipment:1b}}] run data modify block 2 2 2 Items[0] set from storage items: Items[{Slot:15b}]
execute unless data storage items: Items[{Slot:15b,tag:{Equipment:1b}}] run function item:ui/ender_chest/give_back
execute unless data storage items: Items[{Slot:15b,tag:{Equipment:1b}}] run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:15b,tag:{CustomModelData:11,NoHold:1b,display:{Name:'{"text":"<ジェムクラフトベンチ>","italic":false,"bold":true,"color":"white"}'}}}

#Gem1
data remove storage gem: Gem
data modify storage gem: Gem set from storage items: Items[{Slot:15b}].tag.Gems[0]
execute unless data storage gem: Gem run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:7b,tag:{CustomModelData:11,NoHold:1b,display:{Name:'{"text":"<ジェムスロット>","italic":false,"bold":true,"color":"white"}'}}}
execute if data storage gem: {Gem:{Socket:"Red"}} unless data storage gem: Gem.tag run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:7b,tag:{CustomModelData:12,NoHold:1b,display:{Name:'{"text":"<赤のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}}
execute if data storage gem: {Gem:{Socket:"Green"}} unless data storage gem: Gem.tag run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:7b,tag:{CustomModelData:13,NoHold:1b,display:{Name:'{"text":"<緑のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}}
execute if data storage gem: {Gem:{Socket:"Blue"}} unless data storage gem: Gem.tag run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:7b,tag:{CustomModelData:14,NoHold:1b,display:{Name:'{"text":"<青のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}}
execute if data storage gem: {Gem:{Socket:"White"}} unless data storage gem: Gem.tag run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:7b,tag:{CustomModelData:15,NoHold:1b,display:{Name:'{"text":"<白のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}}
execute if data storage gem: Gem.tag run data modify storage items: Items[{Slot:7b}].id set value "minecraft:cake"
execute if data storage gem: Gem.tag run data modify storage items: Items[{Slot:7b}].tag set from storage gem: Gem.tag

#Gem2
data remove storage gem: Gem
data modify storage gem: Gem set from storage items: Items[{Slot:15b}].tag.Gems[1]
execute unless data storage gem: Gem run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:8b,tag:{CustomModelData:11,NoHold:1b,display:{Name:'{"text":"<ジェムスロット>","italic":false,"bold":true,"color":"white"}'}}}
execute if data storage gem: {Gem:{Socket:"Red"}} unless data storage gem: Gem.tag run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:8b,tag:{CustomModelData:12,NoHold:1b,display:{Name:'{"text":"<赤のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}}
execute if data storage gem: {Gem:{Socket:"Green"}} unless data storage gem: Gem.tag run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:8b,tag:{CustomModelData:13,NoHold:1b,display:{Name:'{"text":"<緑のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}}
execute if data storage gem: {Gem:{Socket:"Blue"}} unless data storage gem: Gem.tag run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:8b,tag:{CustomModelData:14,NoHold:1b,display:{Name:'{"text":"<青のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}}
execute if data storage gem: {Gem:{Socket:"White"}} unless data storage gem: Gem.tag run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:8b,tag:{CustomModelData:15,NoHold:1b,display:{Name:'{"text":"<白のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}}
execute if data storage gem: Gem.tag run data modify storage items: Items[{Slot:8b}].id set value "minecraft:cake"
execute if data storage gem: Gem.tag run data modify storage items: Items[{Slot:8b}].tag set from storage gem: Gem.tag

#Gem3
data remove storage gem: Gem
data modify storage gem: Gem set from storage items: Items[{Slot:15b}].tag.Gems[2]
execute unless data storage gem: Gem run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:16b,tag:{CustomModelData:11,NoHold:1b,display:{Name:'{"text":"<ジェムスロット>","italic":false,"bold":true,"color":"white"}'}}}
execute if data storage gem: {Gem:{Socket:"Red"}} unless data storage gem: Gem.tag run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:16b,tag:{CustomModelData:12,NoHold:1b,display:{Name:'{"text":"<赤のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}}
execute if data storage gem: {Gem:{Socket:"Green"}} unless data storage gem: Gem.tag run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:16b,tag:{CustomModelData:13,NoHold:1b,display:{Name:'{"text":"<緑のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}}
execute if data storage gem: {Gem:{Socket:"Blue"}} unless data storage gem: Gem.tag run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:16b,tag:{CustomModelData:14,NoHold:1b,display:{Name:'{"text":"<青のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}}
execute if data storage gem: {Gem:{Socket:"White"}} unless data storage gem: Gem.tag run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:16b,tag:{CustomModelData:15,NoHold:1b,display:{Name:'{"text":"<白のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}}
execute if data storage gem: Gem.tag run data modify storage items: Items[{Slot:16b}].id set value "minecraft:cake"
execute if data storage gem: Gem.tag run data modify storage items: Items[{Slot:16b}].tag set from storage gem: Gem.tag

#Gem4
data remove storage gem: Gem
data modify storage gem: Gem set from storage items: Items[{Slot:15b}].tag.Gems[3]
execute unless data storage gem: Gem run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:17b,tag:{CustomModelData:11,NoHold:1b,display:{Name:'{"text":"<ジェムスロット>","italic":false,"bold":true,"color":"white"}'}}}
execute if data storage gem: {Gem:{Socket:"Red"}} unless data storage gem: Gem.tag run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:17b,tag:{CustomModelData:12,NoHold:1b,display:{Name:'{"text":"<赤のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}}
execute if data storage gem: {Gem:{Socket:"Green"}} unless data storage gem: Gem.tag run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:17b,tag:{CustomModelData:13,NoHold:1b,display:{Name:'{"text":"<緑のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}}
execute if data storage gem: {Gem:{Socket:"Blue"}} unless data storage gem: Gem.tag run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:17b,tag:{CustomModelData:14,NoHold:1b,display:{Name:'{"text":"<青のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}}
execute if data storage gem: {Gem:{Socket:"White"}} unless data storage gem: Gem.tag run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:17b,tag:{CustomModelData:15,NoHold:1b,display:{Name:'{"text":"<白のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}}
execute if data storage gem: Gem.tag run data modify storage items: Items[{Slot:17b}].id set value "minecraft:cake"
execute if data storage gem: Gem.tag run data modify storage items: Items[{Slot:17b}].tag set from storage gem: Gem.tag

#Gem5
data remove storage gem: Gem
data modify storage gem: Gem set from storage items: Items[{Slot:15b}].tag.Gems[4]
execute unless data storage gem: Gem run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:25b,tag:{CustomModelData:11,NoHold:1b,display:{Name:'{"text":"<ジェムスロット>","italic":false,"bold":true,"color":"white"}'}}}
execute if data storage gem: {Gem:{Socket:"Red"}} unless data storage gem: Gem.tag run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:25b,tag:{CustomModelData:12,NoHold:1b,display:{Name:'{"text":"<赤のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}}
execute if data storage gem: {Gem:{Socket:"Green"}} unless data storage gem: Gem.tag run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:25b,tag:{CustomModelData:13,NoHold:1b,display:{Name:'{"text":"<緑のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}}
execute if data storage gem: {Gem:{Socket:"Blue"}} unless data storage gem: Gem.tag run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:25b,tag:{CustomModelData:14,NoHold:1b,display:{Name:'{"text":"<青のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}}
execute if data storage gem: {Gem:{Socket:"White"}} unless data storage gem: Gem.tag run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:25b,tag:{CustomModelData:15,NoHold:1b,display:{Name:'{"text":"<白のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}}
execute if data storage gem: Gem.tag run data modify storage items: Items[{Slot:25b}].id set value "minecraft:cake"
execute if data storage gem: Gem.tag run data modify storage items: Items[{Slot:25b}].tag set from storage gem: Gem.tag

#Gem6
data remove storage gem: Gem
data modify storage gem: Gem set from storage items: Items[{Slot:15b}].tag.Gems[5]
execute unless data storage gem: Gem run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:26b,tag:{CustomModelData:11,NoHold:1b,display:{Name:'{"text":"<ジェムスロット>","italic":false,"bold":true,"color":"white"}'}}}
execute if data storage gem: {Gem:{Socket:"Red"}} unless data storage gem: Gem.tag run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:26b,tag:{CustomModelData:12,NoHold:1b,display:{Name:'{"text":"<赤のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}}
execute if data storage gem: {Gem:{Socket:"Green"}} unless data storage gem: Gem.tag run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:26b,tag:{CustomModelData:13,NoHold:1b,display:{Name:'{"text":"<緑のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}}
execute if data storage gem: {Gem:{Socket:"Blue"}} unless data storage gem: Gem.tag run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:26b,tag:{CustomModelData:14,NoHold:1b,display:{Name:'{"text":"<青のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}}
execute if data storage gem: {Gem:{Socket:"White"}} unless data storage gem: Gem.tag run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:26b,tag:{CustomModelData:15,NoHold:1b,display:{Name:'{"text":"<白のジェムスロット>","italic":false,"bold":true,"color":"white"}'}}}
execute if data storage gem: Gem.tag run data modify storage items: Items[{Slot:26b}].id set value "minecraft:cake"
execute if data storage gem: Gem.tag run data modify storage items: Items[{Slot:26b}].tag set from storage gem: Gem.tag

scoreboard players set #Ench Number 1
