data modify storage affix: Affixes set value {Implicit:[]}

execute if data storage item: Item.tag.Implicit[0] run function item:enchant/craft/blessed/implicit

data modify storage item: Item.tag merge from storage affix: Affixes

scoreboard players set #Success Number 1
