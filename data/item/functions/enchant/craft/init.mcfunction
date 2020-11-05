#ItemLevel設定
execute store result storage item: Item.tag.ItemLevel int 1 run scoreboard players get #ItemLevel Number
#Implicit適用
execute if data storage item: Item.tag.Implicit run function item:enchant/craft/blessed
#Socketリロール
execute unless data storage item: {Item:{tag:{MaxSocket:0}}} run function item:enchant/craft/jeweller
#Rarity設定 Rarity = 0 ~ 1000000 / IIR
function main:rand
scoreboard players operation #Rarity Number = #Rand Number
scoreboard players operation #Rarity Number /= #IIR Number
#unique
#execute if score #Rarity Number matches ..10 run
execute if score #Rarity Number matches ..100 run function item:enchant/craft/alchemy
execute if score #Rarity Number matches 101..1000 run function item:enchant/craft/transmutation
#Mod付与
execute if score #PAdd Number matches 1.. run function item:enchant/add/prefix/main
execute if score #SAdd Number matches 1.. run function item:enchant/add/suffix/main
#Lore初期化
function item:lore/equipment/main
