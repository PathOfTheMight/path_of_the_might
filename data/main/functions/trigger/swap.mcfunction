#Fキー入れ替え
#コピー用アイテムを召喚
execute if entity @s[nbt={Inventory:[{Slot:-106b}]}] run summon minecraft:item ~ ~ ~ {Tags:[swapped],Item:{id:"minecraft:glass_pane",Count:1b}}
#メインハンドに移動したアイテム消去
clear @s #main:offhand
#オフハンドに移動したアイテムのコピー
data modify entity @e[tag=swapped,limit=1,sort=nearest] Item set from entity @s Inventory[{Slot:-106b}]
#オフハンドを入れ替え
replaceitem entity @s[tag=offhand_map] weapon.offhand minecraft:filled_map{map:0,Offhand:1b} 1
execute store result entity @s[tag=offhand_map] Inventory[40].tag.map int 1 run scoreboard players get @s map
replaceitem entity @s[tag=offhand_compass] weapon.offhand minecraft:compass{map:0,Offhand:1b} 1

#トリガー
#インスタントスキルは即発動
tag @s add Swap
