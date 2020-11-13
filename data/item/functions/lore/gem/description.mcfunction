data modify block 2 4 2 Text1 set value '{"nbt":"Description[0]","storage":"description:","interpret":true}'
data modify storage gem: Gem.tag.display.Lore append from block 2 4 2 Text1
data remove storage description: Description[0]
execute if data storage description: Description[0] run function item:lore/gem/description
