data modify storage affix: Affix set from storage item: Item.tag.Prefix[0]
function item:enchant/lore/affix/main
data modify storage affix: Affixes.Prefix append from storage affix: Affix

data remove storage item: Item.tag.Prefix[0]
execute if data storage item: Item.tag.Prefix[0] run function item:enchant/craft/analysis/prefix
