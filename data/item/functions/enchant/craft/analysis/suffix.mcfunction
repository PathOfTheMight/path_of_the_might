data modify storage affix: Affix set from storage item: Item.tag.Suffix[0]
function item:enchant/lore/affix/main
data modify storage affix: Affixes.Suffix append from storage affix: Affix

data remove storage item: Item.tag.Suffix[0]
execute if data storage item: Item.tag.Suffix[0] run function item:enchant/craft/analysis/suffix
