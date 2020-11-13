#Implicit
function item:enchant/calc/count_implicit
execute if score #ICount Number matches 1.. run data modify storage item: Item.tag.display.Lore append from storage item: Item.tag.Implicit[0].Lore1
execute if score #ICount Number matches 1.. run data modify storage item: Item.tag.display.Lore append from storage item: Item.tag.Implicit[0].Lore2

execute if score #ICount Number matches 2.. run data modify storage item: Item.tag.display.Lore append from storage item: Item.tag.Implicit[1].Lore1
execute if score #ICount Number matches 2.. run data modify storage item: Item.tag.display.Lore append from storage item: Item.tag.Implicit[1].Lore2

execute if score #ICount Number matches 3.. run data modify storage item: Item.tag.display.Lore append from storage item: Item.tag.Implicit[2].Lore1
execute if score #ICount Number matches 3.. run data modify storage item: Item.tag.display.Lore append from storage item: Item.tag.Implicit[2].Lore2
