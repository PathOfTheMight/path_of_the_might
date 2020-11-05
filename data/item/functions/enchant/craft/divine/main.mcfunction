data modify storage affix: Affixes set value {Prefix:[],Suffix:[]}

execute if data storage item: Item.tag.Prefix[0] run function item:enchant/craft/divine/prefix
execute if data storage item: Item.tag.Suffix[0] run function item:enchant/craft/divine/suffix

data modify storage item: Item.tag merge from storage affix: Affixes

scoreboard players set #Success Number 1
