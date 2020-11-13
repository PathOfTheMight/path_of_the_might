#item: Itemにcurrency: Itemを使用
scoreboard players set #Success Number 0

function item:enchant/calc/count_prefix
function item:enchant/calc/count_suffix
execute as 0-0-0-0-0 store result score @s Lvl store result score #ItemLevel Number run data get storage item: Item.tag.ItemLevel

#allocate
execute if data storage item: {Item:{tag:{Rarity:"Normal"}}} run function item:enchant/craft/allocate/normal
execute if data storage item: {Item:{tag:{Rarity:"Magic"}}} run function item:enchant/craft/allocate/magic
execute if data storage item: {Item:{tag:{Rarity:"Rare"}}} run function item:enchant/craft/allocate/rare
execute if data storage item: {Item:{tag:{Rarity:"Rare"}}} run function item:enchant/craft/allocate/unique
execute if score #Success Number matches 0 run function item:enchant/craft/allocate/other

#Lore更新
execute if score #Success Number matches 1 run function item:lore/equipment/main
