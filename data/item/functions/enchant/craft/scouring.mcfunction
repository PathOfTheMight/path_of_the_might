#to normal
#remove all mods
function item:enchant/remove/prefix/all
function item:enchant/remove/suffix/all

data modify storage item: Item.tag.Rarity set value "Normal"
data remove storage item: Item.tag.UniqueName

scoreboard players set #Success Number 1
