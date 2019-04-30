#Fキー入れ替え
#コピー用アイテムを召喚
execute if entity @s[nbt={Inventory:[{Slot:-106b}]}] run summon minecraft:item ~ ~ ~ {Tags:[Swapped],Item:{id:"minecraft:glass_pane",Count:1b}}
#メインハンドに移動したアイテム消去
clear @s minecraft:carrot_on_a_stick{Offhand:1b}
#オフハンドに移動したアイテムのコピー
data modify entity @e[tag=Swapped,limit=1,sort=nearest] Item set from entity @s Inventory[{Slot:-106b}]
#オフハンドを入れ替え
replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{Offhand:1b,CustomModelData:20} 1
execute store result entity @s Inventory[{Slot:-106b}].tag.CustomModelData int 1 run scoreboard players get @s MpRatio
#トリガー
#インスタントスキルは即発動
tag @s add Swap
