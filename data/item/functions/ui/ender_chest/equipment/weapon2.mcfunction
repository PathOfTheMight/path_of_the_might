scoreboard players set #Flag Number 0

execute if data storage items: Items[{Slot:0b,tag:{2H:1b,Melee:1b}}] run scoreboard players set #Flag Number 1
execute if data storage items: Items[{Slot:0b,tag:{Bow:1b}}] unless data storage items: Items[{Slot:3b,tag:{Quiver:1b}}] run scoreboard players set #Flag Number 1
execute if data storage items: Items[{Slot:0b,tag:{Wand:1b}}] unless data storage items: Items[{Slot:3b,tag:{Wand:1b}}] unless data storage items: Items[{Slot:3b,tag:{Shield:1b}}] run scoreboard players set #Flag Number 1
execute if data storage items: Items[{Slot:0b,tag:{1H:1b,Melee:1b}}] unless data storage items: Items[{Slot:3b,tag:{1H:1b,Melee:1b}}] unless data storage items: Items[{Slot:3b,tag:{Shield:1b}}] run scoreboard players set #Flag Number 1
execute unless data storage items: Items[{Slot:0b,tag:{Weapon:1b}}] unless data storage items: Items[{Slot:3b,tag:{1H:1b}}] unless data storage items: Items[{Slot:3b,tag:{Shield:1b}}] unless data storage items: Items[{Slot:3b,tag:{Quiver:1b}}] run scoreboard players set #Flag Number 1

execute if score #Flag Number matches 1 run data modify block 2 2 2 Items[0] set from storage items: Items[{Slot:3b}]
execute if score #Flag Number matches 1 run function item:ui/ender_chest/give_back
execute if score #Flag Number matches 1 unless data storage items: Items[{Slot:0b,tag:{Bow:1b}}] run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:3b,tag:{CustomModelData:2,NoHold:1b,Weapon:1b,Fist:1b,display:{Name:'{"text":"<オフハンド>","italic":false,"bold":true,"color":"white"}',Lore:['{"text":"-------------","color":"white","bold":true,"italic":false}','{"text":"< 素手 >","color":"white","bold":true,"italic":false}','{"text":"物理ダメージ: ","color":"gray","bold":true,"italic":false,"extra":[{"text":"2-6","color":"white","bold":false,"italic":false}]}']}}}
execute if score #Flag Number matches 1 if data storage items: Items[{Slot:0b,tag:{Bow:1b}}] run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:3b,tag:{CustomModelData:16,NoHold:1b,display:{Name:'{"text":"<矢筒>","italic":false,"bold":true,"color":"white"}'}}}

execute if data storage items: Items[{Slot:0b,tag:{2H:1b,Melee:1b}}] run function item:ui/ender_chest/equipment/weapon2_copy
execute unless data storage items: Items[{Slot:0b,tag:{Weapon:1b}}] if data storage items: Items[{Slot:3b,tag:{1H:1b}}] run data modify storage items: Items append from storage items: Items[{Slot:3b,tag:{Weapon:1b}}]
execute unless data storage items: Items[{Slot:0b,tag:{Weapon:1b}}] if data storage items: Items[{Slot:3b,tag:{1H:1b}}] run data modify storage items: Items[{Slot:3b,tag:{Weapon:1b}}].Slot set value 0b

scoreboard players set #UpdateEquipment Number 1
scoreboard players set #Weapon Number 1
