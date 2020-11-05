data modify storage affix: Affix set from storage item: Item.tag.Implicit[0]
function item:enchant/roll/affix/main
function item:enchant/lore/affix/main
data modify storage affix: Affixes.Implicit append from storage affix: Affix

data remove storage item: Item.tag.Implicit[0]
execute if data storage item: Item.tag.Implicit[0] run function item:enchant/craft/blessed/implicit
