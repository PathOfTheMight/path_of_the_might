execute if score #Success Number matches 0 unless data storage item: Item.tag.Analyzed store success score #Success Number run data modify storage item: Item.tag.Analyzed set value 1b
execute if score #Success Number matches 0 if data storage item: Item.tag.Analyzed store success score #Success Number run data remove storage item: Item.tag.Analyzed
#Lore更新
data modify storage affix: Affixes set value {Implicit:[],Prefix:[],Suffix:[]}

execute if data storage item: Item.tag.Implicit[0] run function item:enchant/craft/analysis/implicit
execute if data storage item: Item.tag.Prefix[0] run function item:enchant/craft/analysis/prefix
execute if data storage item: Item.tag.Suffix[0] run function item:enchant/craft/analysis/suffix

data modify storage item: Item.tag merge from storage affix: Affixes

scoreboard players set #Success Number 1
