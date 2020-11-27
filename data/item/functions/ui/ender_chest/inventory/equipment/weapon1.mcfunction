execute unless data storage items: Items[{Slot:0b,tag:{Weapon:1b}}] run data modify block 2 2 2 Items[0] set from storage items: Items[{Slot:0b}]
execute unless data storage items: Items[{Slot:0b,tag:{Weapon:1b}}] run function item:ui/ender_chest/give_back
execute unless data storage items: Items[{Slot:0b,tag:{Weapon:1b}}] run data modify storage items: Items append value {id:"minecraft:cod",Count:1b,Slot:0b,tag:{CustomModelData:1,NoHold:1b,Weapon:1b,Fist:1b,display:{Name:'{"text":"<メインハンド>","italic":false,"bold":true,"color":"white"}',Lore:['{"text":"-------------","color":"white","bold":true,"italic":false}','{"text":"< 素手 >","color":"white","bold":true,"italic":false}','{"text":"物理ダメージ: ","color":"gray","bold":true,"italic":false,"extra":[{"text":"2-6","color":"white","bold":false,"italic":false}]}']}}}

scoreboard players set #UpdateEquipment Number 1

#オフハンド更新
function item:ui/ender_chest/inventory/weapon2
scoreboard players set #WeaponSound Number 1
