data modify storage gem: Gem set from storage item: Item.tag.Gems[0]
function item:enchant/roll/color/main
data modify storage gems: Gems append from storage gem: Gem

data remove storage item: Item.tag.Gems[0]
execute if data storage item: Item.tag.Gems[0] run function item:enchant/craft/chromatic/socket
