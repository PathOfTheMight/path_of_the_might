#Tags設定
data modify entity 0-0-0-0-0 Tags set value []
data modify entity 0-0-0-0-0 Tags append from storage item: Item.tag.Suffix[].ID
#enchantをloot
execute as 0-0-0-0-0 run function item:enchant/add/suffix/type/main
data modify storage affix: Affix set from block 2 2 2 Items[0].tag
#roll
function item:enchant/roll/affix/main
#lore
function item:enchant/lore/affix/main
#apply
data modify storage item: Item.tag.Suffix append from storage affix: Affix
