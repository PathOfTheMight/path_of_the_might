data modify storage gem: Gem set from storage gems: Gems[0]
execute if data storage gem: Gem.tag run function item:lore/equipment/gem/socketed
execute unless data storage gem: Gem.tag run function item:lore/equipment/gem/empty

data remove storage gems: Gems[0]
execute if data storage gems: Gems[0] run function item:lore/equipment/gem/socket
