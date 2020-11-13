#Gem
data modify storage item: Item.tag.display.Lore append value '{"text":"------------------","color":"white","italic":false}'
data modify storage gems: Gems set from storage item: Item.tag.Gems

function item:lore/equipment/gem/socket
